#include "logger.h"

#include "range.h"
#include "terminal.h"

#include "pid.h"
#include "tick.h"

#include "FreeRTOS.h"
#include "portable.h" // TODO: Delete
#include "task.h"
#include "queue.h"
#include "semphr.h"

/*******************************************************************************
 * Data structure definition
 ******************************************************************************/
struct data {
    struct main_pid pid;        //< PID setpoint data
    struct range_data range;    //< Range data
    struct step_data step;      //< Travel distance data
    struct speed_data speed;    //< Wheel speed data
    int32_t outputT;            //< Transitional speed
    int32_t outputR;            //< Rotational speed
    uint32_t current_time;      //< Log time
};

/*******************************************************************************
 * Logger loop thread and local variable
 ******************************************************************************/
static void writer_loop(void *pvParameters);
static TaskHandle_t thread_handler;
static QueueHandle_t data_queue = NULL;
static SemaphoreHandle_t notify_semphr = NULL;

/*******************************************************************************
 * Function definition
 ******************************************************************************/
void thread_logger_loop_init(void)
{
    /* Allocate Queue */
    data_queue = xQueueCreate(1, sizeof(struct data *));
    if (NULL == data_queue) {
        KB_DEBUG_ERROR("Creating logger queue failed!!");
    }

    /* Semaphore */
    notify_semphr = xSemaphoreCreateCounting(1, 0);
    if (NULL == notify_semphr) {
        KB_DEBUG_ERROR("Creating logger mutex failed!!");
    }

    /* Allocate task */
    BaseType_t result;
    result = xTaskCreate(
            writer_loop,
            "logger",
            configMINIMAL_STACK_SIZE,
            NULL,
            configMAX_PRIORITIES - 1,
            &thread_handler);
    if (result != pdPASS) {
        KB_DEBUG_ERROR("Creating logger task failed!!");
    }
}

int logger_log (
    struct main_pid *pid,
    struct range_data *range,
    struct step_data *step,
    struct speed_data *speed,
    int32_t outputT,
    int32_t outputR)
{
    static struct data data;

    if (pdTRUE != xSemaphoreTake(notify_semphr, 0)) {
        // Writer is busy
        return 1;
    }

    // Copy data
    data = (struct data){
        .pid = pid ? *pid : (const struct main_pid){0},
        .range = range ? *range : (const struct range_data){0},
        .step = step ? *step : (const struct step_data){0},
        .speed = speed ? *speed : (const struct speed_data){0},
        .outputT = outputT,
        .outputR = outputR,
        .current_time = tick_ms()
    };
    xQueueSend(data_queue, &data, 0);

    return 0;
}

static void writer_loop(void *pvParameters)
{
    static struct data *data;
    static uint32_t start_time = 0;

    while (1) {
        // Wait for data
        xQueueReceive(data_queue, data, portMAX_DELAY);
        if (!start_time) {
            start_time = tick_ms();
            data->current_time = start_time; // Prevent the first log time being minus
        }

        // Notify the solver
        // Print the result in json format
        terminal_puts("{");
        terminal_printf("\"PTS\":%ld,", data->pid.tran.setpoint);
        terminal_printf("\"PRS\":%ld,", data->pid.rot.setpoint);
        terminal_printf("\"L\":%d,", data->range.left);
        terminal_printf("\"R\":%d,", data->range.right);
        terminal_printf("\"F\":%d,", data->range.front);
        terminal_printf("\"DL\":%lu,", data->step.left);
        terminal_printf("\"DR\":%lu,", data->step.right);
        terminal_printf("\"SL\":%ld,", data->speed.left);
        terminal_printf("\"SR\":%ld,", data->speed.right);
        terminal_printf("\"OT\":%ld,", data->outputT);
        terminal_printf("\"OR\":%ld,", data->outputR);
        terminal_printf("\"T\":%lu", data->current_time - start_time);
        terminal_puts("},\n");

        // Writer done
        xSemaphoreGive(notify_semphr);
    }

    /* It never goes here, but the task should be deleted when it reached here */
    vTaskDelete(NULL);
}

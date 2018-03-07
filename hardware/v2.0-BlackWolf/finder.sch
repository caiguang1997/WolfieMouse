EESchema Schematic File Version 2
LIBS:micromouse-rescue
LIBS:components_micromouse
LIBS:power
LIBS:transistors
LIBS:device
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:micromouse-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1350 1400 0    200  ~ 40
Range Finders & I2C MUX\n
$Comp
L Q_NMOS_DGS Q1
U 1 1 58D82281
P 2050 3700
AR Path="/58D82281" Ref="Q1"  Part="1" 
AR Path="/56EB6D2D/58D82281" Ref="Q1"  Part="1" 
F 0 "Q1" V 1950 3750 50  0000 L CNN
F 1 "DMN3150LW" V 2300 3550 39  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 2250 3800 50  0001 C CNN
F 3 "" H 2050 3700 50  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
$Comp
L Q_Photo_NPN Q5
U 1 1 58D822D8
P 6250 3600
F 0 "Q5" V 6050 3450 50  0000 L CNN
F 1 "TEFT4300" V 6500 3400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6450 3700 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F1
U 1 1 58D82B31
P 1800 3850
F 0 "R_F1" V 1740 3760 50  0000 L CNN
F 1 "47k" V 1850 3750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1800 3850 50  0001 C CNN
F 3 "" H 1800 3850 50  0000 C CNN
	1    1800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3700 1850 3700
$Comp
L R_Small R_F2
U 1 1 58D830C2
P 2150 3350
F 0 "R_F2" V 2090 3260 50  0000 L CNN
F 1 "10" V 2210 3260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2150 3350 50  0001 C CNN
F 3 "" H 2150 3350 50  0000 C CNN
	1    2150 3350
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D_F1
U 1 1 58D83346
P 2150 3050
F 0 "D_F1" H 2200 3100 50  0000 L CNN
F 1 "SFH 4545" H 2000 2950 39  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 2150 3050 50  0001 C CNN
F 3 "" V 2150 3050 50  0000 C CNN
	1    2150 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3700 1800 3750
Wire Wire Line
	1800 3950 1800 4000
Wire Wire Line
	1800 4000 2700 4000
Connection ~ 2150 4000
Wire Wire Line
	2150 3450 2150 3500
Wire Wire Line
	2150 3150 2150 3250
$Comp
L R_Small R_F9
U 1 1 58D85028
P 6350 4000
F 0 "R_F9" V 6250 3900 50  0000 L CNN
F 1 "2.4k" V 6410 3910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0000 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3800 6350 3900
$Comp
L Q_Photo_NPN Q6
U 1 1 58D86267
P 6950 3600
F 0 "Q6" V 6750 3450 50  0000 L CNN
F 1 "TEFT4300" V 7200 3400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7150 3700 50  0001 C CNN
F 3 "" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F10
U 1 1 58D8626D
P 7050 4000
F 0 "R_F10" V 6950 3850 50  0000 L CNN
F 1 "2.4k" V 7110 3910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0000 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3800 7050 3900
$Comp
L Q_Photo_NPN Q7
U 1 1 58D86304
P 7650 3600
F 0 "Q7" V 7450 3450 50  0000 L CNN
F 1 "TEFT4300" V 7900 3400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7850 3700 50  0001 C CNN
F 3 "" H 7650 3600 50  0001 C CNN
	1    7650 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F11
U 1 1 58D8630A
P 7750 4000
F 0 "R_F11" V 7650 3850 50  0000 L CNN
F 1 "2.4k" V 7810 3910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7750 4000 50  0001 C CNN
F 3 "" H 7750 4000 50  0000 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3800 7750 3900
$Comp
L Q_Photo_NPN Q8
U 1 1 58D863E0
P 8350 3600
F 0 "Q8" V 8150 3450 50  0000 L CNN
F 1 "TEFT4300" V 8600 3400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8550 3700 50  0001 C CNN
F 3 "" H 8350 3600 50  0001 C CNN
	1    8350 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F12
U 1 1 58D863E6
P 8450 4000
F 0 "R_F12" V 8350 3850 50  0000 L CNN
F 1 "2.4k" V 8510 3910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 8450 4000 50  0001 C CNN
F 3 "" H 8450 4000 50  0000 C CNN
	1    8450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3800 8450 3900
Wire Wire Line
	6350 4100 6350 4550
Wire Wire Line
	6350 4550 8450 4550
Wire Wire Line
	8450 4100 8450 4950
Wire Wire Line
	7750 4100 7750 4550
Connection ~ 7750 4550
Wire Wire Line
	7050 4100 7050 4550
Connection ~ 7050 4550
Wire Wire Line
	6350 3400 6350 2950
Wire Wire Line
	6350 2950 8450 2950
Wire Wire Line
	8450 2600 8450 3400
Wire Wire Line
	7750 3400 7750 2950
Connection ~ 7750 2950
Wire Wire Line
	7050 3400 7050 2950
Connection ~ 7050 2950
$Comp
L +5V #PWR047
U 1 1 58D87BCA
P 4700 2450
F 0 "#PWR047" H 4700 2300 50  0001 C CNN
F 1 "+5V" H 4700 2590 50  0000 C CNN
F 2 "" H 4700 2450 50  0001 C CNN
F 3 "" H 4700 2450 50  0001 C CNN
	1    4700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2750 2150 2950
$Comp
L +3.3VADC #PWR048
U 1 1 58D87F07
P 8450 2600
F 0 "#PWR048" H 8600 2550 50  0001 C CNN
F 1 "+3.3VADC" H 8450 2700 50  0000 C CNN
F 2 "" H 8450 2600 50  0001 C CNN
F 3 "" H 8450 2600 50  0001 C CNN
	1    8450 2600
	1    0    0    -1  
$EndComp
Connection ~ 8450 2950
$Comp
L GNDA #PWR049
U 1 1 58D8800F
P 8450 4950
F 0 "#PWR049" H 8450 4700 50  0001 C CNN
F 1 "GNDA" H 8450 4800 50  0000 C CNN
F 2 "" H 8450 4950 50  0001 C CNN
F 3 "" H 8450 4950 50  0001 C CNN
	1    8450 4950
	1    0    0    -1  
$EndComp
Connection ~ 8450 4550
$Comp
L GND #PWR050
U 1 1 58D88118
P 4400 5900
F 0 "#PWR050" H 4400 5650 50  0001 C CNN
F 1 "GND" H 4400 5750 50  0000 C CNN
F 2 "" H 4400 5900 50  0001 C CNN
F 3 "" H 4400 5900 50  0001 C CNN
	1    4400 5900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_F1
U 1 1 58D8921B
P 2450 3400
F 0 "C_F1" V 2400 3450 50  0000 L CNN
F 1 "4.7u" V 2500 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0000 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_F2
U 1 1 58D892D7
P 2700 3400
F 0 "C_F2" V 2650 3450 50  0000 L CNN
F 1 "0.1u" V 2750 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2700 3400 50  0001 C CNN
F 3 "" H 2700 3400 50  0000 C CNN
	1    2700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2750 2700 2750
Wire Wire Line
	2700 2750 2700 3300
Wire Wire Line
	2450 2600 2450 3300
Connection ~ 2450 2750
Wire Wire Line
	2450 4000 2450 3500
Wire Wire Line
	2700 4000 2700 3500
Connection ~ 2450 4000
Wire Wire Line
	2150 3900 2150 5700
$Comp
L Q_NMOS_DGS Q2
U 1 1 58D8A971
P 2800 4200
AR Path="/58D8A971" Ref="Q2"  Part="1" 
AR Path="/56EB6D2D/58D8A971" Ref="Q2"  Part="1" 
F 0 "Q2" V 2700 4250 50  0000 L CNN
F 1 "DMN3150LW" V 3050 4050 39  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 3000 4300 50  0001 C CNN
F 3 "" H 2800 4200 50  0001 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F3
U 1 1 58D8A977
P 2550 4350
F 0 "R_F3" V 2490 4260 50  0000 L CNN
F 1 "47k" V 2600 4250 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2550 4350 50  0001 C CNN
F 3 "" H 2550 4350 50  0000 C CNN
	1    2550 4350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F4
U 1 1 58D8A97E
P 2900 3850
F 0 "R_F4" V 2840 3760 50  0000 L CNN
F 1 "20" V 2960 3760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2900 3850 50  0001 C CNN
F 3 "" H 2900 3850 50  0000 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D_F2
U 1 1 58D8A984
P 2900 3550
F 0 "D_F2" H 2950 3600 50  0000 L CNN
F 1 "SFH 4545" H 2750 3450 39  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 2900 3550 50  0001 C CNN
F 3 "" V 2900 3550 50  0000 C CNN
	1    2900 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 4200 2550 4250
Wire Wire Line
	2550 4450 2550 4500
Wire Wire Line
	2550 4500 3450 4500
Connection ~ 2900 4500
Wire Wire Line
	2900 3950 2900 4000
Wire Wire Line
	2900 3650 2900 3750
Wire Wire Line
	2900 3250 2900 3450
$Comp
L C_Small C_F3
U 1 1 58D8A991
P 3200 3900
F 0 "C_F3" V 3150 3950 50  0000 L CNN
F 1 "4.7u" V 3250 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3200 3900 50  0001 C CNN
F 3 "" H 3200 3900 50  0000 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_F4
U 1 1 58D8A997
P 3450 3900
F 0 "C_F4" V 3400 3950 50  0000 L CNN
F 1 "0.1u" V 3500 3950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3450 3900 50  0001 C CNN
F 3 "" H 3450 3900 50  0000 C CNN
	1    3450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3250 3450 3250
Wire Wire Line
	3450 3250 3450 3800
Wire Wire Line
	3200 2600 3200 3800
Connection ~ 3200 3250
Wire Wire Line
	3200 4500 3200 4000
Wire Wire Line
	3450 4500 3450 4000
Connection ~ 3200 4500
Wire Wire Line
	2900 4400 2900 5700
$Comp
L Q_NMOS_DGS Q3
U 1 1 58D8AA41
P 3550 4700
AR Path="/58D8AA41" Ref="Q3"  Part="1" 
AR Path="/56EB6D2D/58D8AA41" Ref="Q3"  Part="1" 
F 0 "Q3" V 3450 4750 50  0000 L CNN
F 1 "DMN3150LW" V 3800 4550 39  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 3750 4800 50  0001 C CNN
F 3 "" H 3550 4700 50  0001 C CNN
	1    3550 4700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F5
U 1 1 58D8AA47
P 3300 4850
F 0 "R_F5" V 3240 4760 50  0000 L CNN
F 1 "47k" V 3350 4750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3300 4850 50  0001 C CNN
F 3 "" H 3300 4850 50  0000 C CNN
	1    3300 4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F6
U 1 1 58D8AA4E
P 3650 4350
F 0 "R_F6" V 3590 4260 50  0000 L CNN
F 1 "20" V 3710 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3650 4350 50  0001 C CNN
F 3 "" H 3650 4350 50  0000 C CNN
	1    3650 4350
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D_F3
U 1 1 58D8AA54
P 3650 4050
F 0 "D_F3" H 3700 4100 50  0000 L CNN
F 1 "SFH 4545" H 3500 3950 39  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 3650 4050 50  0001 C CNN
F 3 "" V 3650 4050 50  0000 C CNN
	1    3650 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4700 3300 4750
Wire Wire Line
	3300 4950 3300 5000
Wire Wire Line
	3300 5000 4200 5000
Connection ~ 3650 5000
Wire Wire Line
	3650 4450 3650 4500
Wire Wire Line
	3650 4150 3650 4250
Wire Wire Line
	3650 3750 3650 3950
$Comp
L C_Small C_F5
U 1 1 58D8AA61
P 3950 4400
F 0 "C_F5" V 3900 4450 50  0000 L CNN
F 1 "4.7u" V 4000 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3950 4400 50  0001 C CNN
F 3 "" H 3950 4400 50  0000 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_F6
U 1 1 58D8AA67
P 4200 4400
F 0 "C_F6" V 4150 4450 50  0000 L CNN
F 1 "0.1u" V 4250 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4200 4400 50  0001 C CNN
F 3 "" H 4200 4400 50  0000 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3750 4200 3750
Wire Wire Line
	4200 3750 4200 4300
Wire Wire Line
	3950 2600 3950 4300
Connection ~ 3950 3750
Wire Wire Line
	3950 5000 3950 4500
Wire Wire Line
	4200 5000 4200 4500
Connection ~ 3950 5000
Wire Wire Line
	3650 4900 3650 5700
$Comp
L Q_NMOS_DGS Q4
U 1 1 58D8AB35
P 4300 5200
AR Path="/58D8AB35" Ref="Q4"  Part="1" 
AR Path="/56EB6D2D/58D8AB35" Ref="Q4"  Part="1" 
F 0 "Q4" V 4200 5250 50  0000 L CNN
F 1 "DMN3150LW" V 4550 5050 39  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 4500 5300 50  0001 C CNN
F 3 "" H 4300 5200 50  0001 C CNN
	1    4300 5200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R_F7
U 1 1 58D8AB3B
P 4050 5350
F 0 "R_F7" V 3990 5260 50  0000 L CNN
F 1 "47k" V 4100 5250 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4050 5350 50  0001 C CNN
F 3 "" H 4050 5350 50  0000 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5200 4100 5200
$Comp
L R_Small R_F8
U 1 1 58D8AB42
P 4400 4850
F 0 "R_F8" V 4340 4760 50  0000 L CNN
F 1 "10" V 4460 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4400 4850 50  0001 C CNN
F 3 "" H 4400 4850 50  0000 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D_F4
U 1 1 58D8AB48
P 4400 4550
F 0 "D_F4" H 4450 4600 50  0000 L CNN
F 1 "SFH 4545" H 4250 4450 39  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 4400 4550 50  0001 C CNN
F 3 "" V 4400 4550 50  0000 C CNN
	1    4400 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 5200 4050 5250
Wire Wire Line
	4050 5450 4050 5500
Wire Wire Line
	4050 5500 4950 5500
Connection ~ 4400 5500
Wire Wire Line
	4400 4950 4400 5000
Wire Wire Line
	4400 4650 4400 4750
Wire Wire Line
	4400 4250 4400 4450
$Comp
L C_Small C_F7
U 1 1 58D8AB55
P 4700 4900
F 0 "C_F7" V 4650 4950 50  0000 L CNN
F 1 "4.7u" V 4750 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4700 4900 50  0001 C CNN
F 3 "" H 4700 4900 50  0000 C CNN
	1    4700 4900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_F8
U 1 1 58D8AB5B
P 4950 4900
F 0 "C_F8" V 4900 4950 50  0000 L CNN
F 1 "0.1u" V 5000 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4950 4900 50  0001 C CNN
F 3 "" H 4950 4900 50  0000 C CNN
	1    4950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4250 4950 4250
Wire Wire Line
	4700 2450 4700 4800
Connection ~ 4700 4250
Wire Wire Line
	4950 5500 4950 5000
Connection ~ 4700 5500
Wire Wire Line
	4400 5400 4400 5900
Connection ~ 4950 4250
Wire Wire Line
	4950 4250 4950 4800
Connection ~ 4700 2600
Wire Wire Line
	2450 2600 4700 2600
Connection ~ 3950 2600
Connection ~ 3200 2600
Connection ~ 3650 5700
Connection ~ 2900 5700
Connection ~ 4400 5700
Wire Wire Line
	2150 5700 4400 5700
Wire Wire Line
	4700 5000 4700 5500
Text HLabel 1550 3700 0    60   Input ~ 0
EMITTER_FL
Connection ~ 1800 3700
Text HLabel 1550 4450 0    60   Input ~ 0
EMITTER_SIDES
Connection ~ 2550 4200
Connection ~ 3300 4700
Connection ~ 4050 5200
Text HLabel 1550 5200 0    60   Input ~ 0
EMITTER_FR
Wire Wire Line
	1550 4450 1650 4450
Wire Wire Line
	1650 4200 1650 4700
Connection ~ 1650 4200
Connection ~ 1650 4700
Connection ~ 1650 4450
Wire Wire Line
	1650 4200 2600 4200
Wire Wire Line
	1650 4700 3350 4700
Text HLabel 6500 3850 2    60   Output ~ 0
RECV_FL
Wire Wire Line
	6500 3850 6350 3850
Connection ~ 6350 3850
Text HLabel 7200 3850 2    60   Output ~ 0
RECV_L
Wire Wire Line
	7200 3850 7050 3850
Connection ~ 7050 3850
Text HLabel 7900 3850 2    60   Output ~ 0
RECV_R
Wire Wire Line
	7900 3850 7750 3850
Connection ~ 7750 3850
Text HLabel 8600 3850 2    60   Output ~ 0
RECV_FR
Wire Wire Line
	8600 3850 8450 3850
Connection ~ 8450 3850
Text Notes 1400 2450 0    60   ~ 12
SOLDERING WARNING.\nInfrad LEDs: unlike usual LEDs, longer pins are CATHODE!! (Pin 1)
Text Notes 6000 2750 0    60   ~ 12
Soldering Note.\nPhototransistor: Longer pins are emitters (pin 2).
$EndSCHEMATC

EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
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
LIBS:ftdi
LIBS:filter
LIBS:my_power
LIBS:my_74
LIBS:my_crystal
LIBS:my_connector
LIBS:my_esd
LIBS:smartline-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 93LCxxB U2
U 1 1 56A0C7B8
P 5150 3450
F 0 "U2" H 5000 3800 50  0000 C CNN
F 1 "93LC56B" H 4950 3200 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5050 3450 50  0001 C CNN
F 3 "" H 5150 3550 50  0000 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
NoConn ~ 5450 3450
NoConn ~ 5450 3550
Wire Wire Line
	5450 3250 5650 3250
Wire Wire Line
	4650 2850 4650 3250
Wire Wire Line
	4600 3250 4850 3250
$Comp
L GND #PWR034
U 1 1 56A0C90C
P 4650 3700
F 0 "#PWR034" H 4650 3450 50  0001 C CNN
F 1 "GND" H 4650 3550 50  0000 C CNN
F 2 "" H 4650 3700 50  0000 C CNN
F 3 "" H 4650 3700 50  0000 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3550 4650 3550
Wire Wire Line
	4650 3550 4650 3700
Wire Wire Line
	4150 3350 4850 3350
Wire Wire Line
	4150 3450 4850 3450
Text HLabel 6150 2800 2    60   Input ~ 0
EE_DATA
Text HLabel 4150 3350 0    60   Input ~ 0
EE_CS
Text HLabel 4150 3450 0    60   Input ~ 0
EE_CLK
Wire Wire Line
	6000 3200 6000 3350
Connection ~ 6000 3350
Wire Wire Line
	5650 3250 5650 2800
Wire Wire Line
	5650 2800 6150 2800
Wire Wire Line
	6000 2800 6000 2900
Connection ~ 6000 2800
Wire Wire Line
	6000 3350 5450 3350
Text Label 5600 3350 0    60   ~ 0
EE_DO
$Comp
L C_Small C10
U 1 1 56A0CEA5
P 4500 3250
F 0 "C10" V 4250 3150 50  0000 L CNN
F 1 "0.1U_0402_16V" V 4350 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4500 3250 50  0001 C CNN
F 3 "" H 4500 3250 50  0000 C CNN
	1    4500 3250
	0    1    1    0   
$EndComp
Connection ~ 4650 3250
$Comp
L GND #PWR035
U 1 1 56A0CF2B
P 4200 3250
F 0 "#PWR035" H 4200 3000 50  0001 C CNN
F 1 "GND" H 4200 3100 50  0000 C CNN
F 2 "" H 4200 3250 50  0000 C CNN
F 3 "" H 4200 3250 50  0000 C CNN
	1    4200 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3250 4400 3250
$Comp
L R R5
U 1 1 56A0D914
P 6000 3050
F 0 "R5" V 6080 3050 50  0000 C CNN
F 1 "2.2K_0402_5%" V 6200 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5930 3050 50  0001 C CNN
F 3 "" H 6000 3050 50  0000 C CNN
	1    6000 3050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V_FTOUT #PWR036
U 1 1 56A2F0C9
P 4650 2850
F 0 "#PWR036" H 4800 2800 50  0001 C CNN
F 1 "+3.3V_FTOUT" H 4650 2950 50  0000 C CNN
F 2 "" H 4650 2850 50  0000 C CNN
F 3 "" H 4650 2850 50  0000 C CNN
	1    4650 2850
	1    0    0    -1  
$EndComp
$EndSCHEMATC

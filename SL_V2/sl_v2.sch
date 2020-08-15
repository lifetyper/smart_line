EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 5ECCBF4A
P 2350 2700
F 0 "J1" H 2457 3567 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 2457 3476 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 2500 2700 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2500 2700 50  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FT232H U3
U 1 1 5ECCD650
P 6250 3200
F 0 "U3" H 6250 4881 50  0000 C CNN
F 1 "FT232H" H 6250 4790 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6250 3200 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232H.pdf" H 6250 3200 50  0001 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TPS73633DBV U1
U 1 1 5ECCF0D0
P 2550 4950
F 0 "U1" H 2550 5317 50  0000 C CNN
F 1 "TPS73633DBV" H 2550 5226 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2550 5275 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps736.pdf" H 2550 4900 50  0001 C CNN
	1    2550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2800 3100 2900
Wire Wire Line
	3100 2600 3100 2700
Wire Wire Line
	3100 2700 2950 2700
Wire Wire Line
	2950 2600 3100 2600
Wire Wire Line
	2950 2800 3100 2800
Wire Wire Line
	2950 2900 3100 2900
$Comp
L Device:R_Small R6
U 1 1 5ECD120E
P 3200 2300
F 0 "R6" V 3004 2300 50  0000 C CNN
F 1 "R_0402_5.1K_5%" V 3095 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3200 2300 50  0001 C CNN
F 3 "~" H 3200 2300 50  0001 C CNN
	1    3200 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5ECD1F46
P 3200 2400
F 0 "R7" V 3300 2400 50  0000 C CNN
F 1 "R_0402_5.1K_5%" V 3250 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3200 2400 50  0001 C CNN
F 3 "~" H 3200 2400 50  0001 C CNN
	1    3200 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2300 3100 2300
Wire Wire Line
	3100 2400 2950 2400
Wire Wire Line
	3300 2300 3450 2300
Wire Wire Line
	3300 2400 3450 2400
$Comp
L power:GND #PWR0101
U 1 1 5ECD2CB0
P 3600 2400
F 0 "#PWR0101" H 3600 2150 50  0001 C CNN
F 1 "GND" V 3605 2272 50  0000 R CNN
F 2 "" H 3600 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0001 C CNN
	1    3600 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2400 3450 2300
Connection ~ 3450 2400
Wire Wire Line
	3450 2400 3600 2400
NoConn ~ 2950 3200
NoConn ~ 2950 3300
Connection ~ 3100 2800
$Comp
L power:GND #PWR0102
U 1 1 5ECD54A1
P 2200 3750
F 0 "#PWR0102" H 2200 3500 50  0001 C CNN
F 1 "GND" H 2205 3577 50  0000 C CNN
F 2 "" H 2200 3750 50  0001 C CNN
F 3 "" H 2200 3750 50  0001 C CNN
	1    2200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3700 2200 3700
Wire Wire Line
	2350 3700 2350 3600
Wire Wire Line
	2050 3600 2050 3700
Wire Wire Line
	2200 3700 2200 3750
Connection ~ 2200 3700
Wire Wire Line
	2200 3700 2350 3700
Wire Wire Line
	2950 2100 3600 2100
Text Label 3050 2100 0    50   ~ 0
VBUS_RAW
Text Label 1200 4850 0    50   ~ 0
VBUS_RAW
Text Label 1800 4850 0    50   ~ 0
VBUS_5V
$Comp
L power:GND #PWR0103
U 1 1 5ECDD19F
P 2550 5350
F 0 "#PWR0103" H 2550 5100 50  0001 C CNN
F 1 "GND" H 2555 5177 50  0000 C CNN
F 2 "" H 2550 5350 50  0001 C CNN
F 3 "" H 2550 5350 50  0001 C CNN
	1    2550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5250 2550 5300
$Comp
L Device:C_Small C4
U 1 1 5ECDE35E
P 3100 5150
F 0 "C4" H 3192 5196 50  0000 L CNN
F 1 "NC" H 3192 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3100 5150 50  0001 C CNN
F 3 "~" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4950 3100 4950
Wire Wire Line
	3100 4950 3100 5050
Wire Wire Line
	3100 5250 3100 5300
Wire Wire Line
	3100 5300 2550 5300
Connection ~ 2550 5300
Wire Wire Line
	2550 5300 2550 5350
Wire Wire Line
	2950 4850 3400 4850
$Comp
L Device:R_Small R10
U 1 1 5ECE03C4
P 3800 4850
F 0 "R10" V 3604 4850 50  0000 C CNN
F 1 "R_0402_0_5%" V 3695 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3800 4850 50  0001 C CNN
F 3 "~" H 3800 4850 50  0001 C CNN
	1    3800 4850
	0    1    1    0   
$EndComp
Text Label 3000 4850 0    50   ~ 0
+3.3V_RAW
Text Label 3900 4850 0    50   ~ 0
+3.3V_OUT
Connection ~ 3100 2600
$Comp
L Device:R_Small R8
U 1 1 5ECF0F89
P 3550 2600
F 0 "R8" V 3600 2450 50  0000 C CNN
F 1 "R_0402_22_5%" V 3600 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
	1    3550 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5ECF171B
P 3550 2800
F 0 "R9" V 3650 2650 50  0000 C CNN
F 1 "R_0402_22_5%" V 3650 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3550 2800 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2600 3450 2600
Wire Wire Line
	3100 2800 3450 2800
Text Label 3200 2600 0    50   ~ 0
D-
Text Label 3200 2800 0    50   ~ 0
D+
Wire Wire Line
	3650 2600 5350 2600
Wire Wire Line
	3650 2800 3850 2800
Wire Wire Line
	3850 2800 3850 2700
Text Label 4300 2600 0    50   ~ 0
DM
Text Label 4300 2700 0    50   ~ 0
DP
Wire Wire Line
	3900 4850 4350 4850
$Comp
L Device:C_Small C5
U 1 1 5ECF7F39
P 3400 5150
F 0 "C5" H 3492 5196 50  0000 L CNN
F 1 "C_0603_4.7uF_10V_X7R" H 3200 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 5150 50  0001 C CNN
F 3 "~" H 3400 5150 50  0001 C CNN
	1    3400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5050 3400 4850
Connection ~ 3400 4850
Wire Wire Line
	3400 4850 3600 4850
Wire Wire Line
	3400 5250 3400 5300
Wire Wire Line
	3400 5300 3100 5300
Connection ~ 3100 5300
$Comp
L Device:C_Small C6
U 1 1 5ECFAC58
P 3600 5150
F 0 "C6" H 3692 5196 50  0000 L CNN
F 1 "C_0402_100nF_16V_X7R" H 3692 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3600 5150 50  0001 C CNN
F 3 "~" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5050 3600 4850
Connection ~ 3600 4850
Wire Wire Line
	3600 4850 3700 4850
Wire Wire Line
	3600 5250 3600 5300
Wire Wire Line
	3600 5300 3400 5300
Connection ~ 3400 5300
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 5ECFC947
P 2250 6000
F 0 "Q1" V 2592 6000 50  0000 C CNN
F 1 "AO3401A" V 2501 6000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2450 5925 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 2250 6000 50  0001 L CNN
	1    2250 6000
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5ED016EB
P 2250 6550
F 0 "R3" V 2300 6350 50  0000 C CNN
F 1 "R_0402_10K_5%" V 2350 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2250 6550 50  0001 C CNN
F 3 "~" H 2250 6550 50  0001 C CNN
	1    2250 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5ED01D63
P 1550 6100
F 0 "R1" V 1600 5900 50  0000 C CNN
F 1 "R_0402_100K_5%" V 1650 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1550 6100 50  0001 C CNN
F 3 "~" H 1550 6100 50  0001 C CNN
	1    1550 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 6100 1300 6100
Wire Wire Line
	1300 6100 1300 5900
Wire Wire Line
	1300 5900 2050 5900
Wire Wire Line
	1650 6100 1800 6100
Wire Wire Line
	1800 6100 1800 6300
Wire Wire Line
	1800 6300 2250 6300
Wire Wire Line
	2250 6300 2250 6200
Wire Wire Line
	2250 6300 2250 6450
Connection ~ 2250 6300
$Comp
L Device:C_Small C1
U 1 1 5ED06EF2
P 1550 6300
F 0 "C1" V 1321 6300 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 1412 6300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1550 6300 50  0001 C CNN
F 3 "~" H 1550 6300 50  0001 C CNN
	1    1550 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 6300 1800 6300
Connection ~ 1800 6300
Wire Wire Line
	1450 6300 1300 6300
Wire Wire Line
	1300 6300 1300 6100
Connection ~ 1300 6100
Text Label 1350 5900 0    50   ~ 0
+3.3V_FTOUT
Wire Wire Line
	2450 5900 2700 5900
Text Label 2550 5900 0    50   ~ 0
+3.3V_PU
$Comp
L Device:R_Small R4
U 1 1 5ED11CD4
P 2700 6250
F 0 "R4" V 2750 6050 50  0000 C CNN
F 1 "R_0402_10K_5%" V 2800 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2700 6250 50  0001 C CNN
F 3 "~" H 2700 6250 50  0001 C CNN
	1    2700 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 6150 2700 5900
Connection ~ 2700 5900
Wire Wire Line
	2700 5900 3000 5900
$Comp
L Device:R_Small R5
U 1 1 5ED13626
P 3000 6250
F 0 "R5" V 3050 6050 50  0000 C CNN
F 1 "R_0402_10K_5%" V 3100 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3000 6250 50  0001 C CNN
F 3 "~" H 3000 6250 50  0001 C CNN
	1    3000 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 6150 3000 5900
Wire Wire Line
	3000 6350 3000 6500
Wire Wire Line
	3000 6500 3350 6500
Wire Wire Line
	2700 6350 2700 6700
Wire Wire Line
	2700 6700 3350 6700
Text Label 1900 6300 0    50   ~ 0
PU_EN#
$Comp
L Device:Fuse_Small F1
U 1 1 5ED1CBE2
P 1650 4850
F 0 "F1" H 1650 5035 50  0000 C CNN
F 1 "Fuse_1206_500mA" H 1650 4944 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 1650 4850 50  0001 C CNN
F 3 "~" H 1650 4850 50  0001 C CNN
	1    1650 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ED1D2F2
P 2050 4600
F 0 "C2" H 2142 4646 50  0000 L CNN
F 1 "C_0603_4.7uF_10V_X7R" H 2100 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2050 4600 50  0001 C CNN
F 3 "~" H 2050 4600 50  0001 C CNN
	1    2050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4700 2050 4850
Wire Wire Line
	1750 4850 2050 4850
Connection ~ 2050 4850
Wire Wire Line
	2050 4850 2150 4850
$Comp
L power:GND #PWR0104
U 1 1 5ED1F3EF
P 2050 4400
F 0 "#PWR0104" H 2050 4150 50  0001 C CNN
F 1 "GND" H 2055 4227 50  0000 C CNN
F 2 "" H 2050 4400 50  0001 C CNN
F 3 "" H 2050 4400 50  0001 C CNN
	1    2050 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 4400 2050 4500
Wire Wire Line
	5350 2000 5050 2000
Text Label 4550 2000 0    50   ~ 0
VBUS_5V
Text Label 3100 6500 0    50   ~ 0
D1
Text Label 3100 6700 0    50   ~ 0
D0
$Comp
L Device:C_Small C13
U 1 1 5ED2549E
P 5050 1800
F 0 "C13" H 5142 1846 50  0000 L CNN
F 1 "C_0402_1uF_10V_X7R" H 5142 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 1800 50  0001 C CNN
F 3 "~" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1900 5050 2000
Connection ~ 5050 2000
Wire Wire Line
	5050 2000 4350 2000
$Comp
L power:GND #PWR0105
U 1 1 5ED276F5
P 5050 1650
F 0 "#PWR0105" H 5050 1400 50  0001 C CNN
F 1 "GND" H 5055 1477 50  0000 C CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "" H 5050 1650 50  0001 C CNN
	1    5050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1650 5050 1700
Wire Wire Line
	5350 2200 4350 2200
Text Label 4500 2200 0    50   ~ 0
+3.3V_FTOUT
$Comp
L Device:C_Small C11
U 1 1 5ED31F4C
P 4850 2400
F 0 "C11" V 4900 2250 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 4950 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 2400 50  0001 C CNN
F 3 "~" H 4850 2400 50  0001 C CNN
	1    4850 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5ED33B10
P 4850 2300
F 0 "C10" V 4900 2150 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 4800 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 2300 50  0001 C CNN
F 3 "~" H 4850 2300 50  0001 C CNN
	1    4850 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2300 5350 2300
Wire Wire Line
	5350 2400 4950 2400
$Comp
L power:GND #PWR0106
U 1 1 5ED38110
P 4400 2350
F 0 "#PWR0106" H 4400 2100 50  0001 C CNN
F 1 "GND" V 4405 2222 50  0000 R CNN
F 2 "" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0001 C CNN
	1    4400 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2350 4600 2300
Wire Wire Line
	4600 2300 4750 2300
Wire Wire Line
	4400 2350 4600 2350
Wire Wire Line
	4600 2350 4600 2400
Wire Wire Line
	4600 2400 4750 2400
Connection ~ 4600 2350
$Comp
L Device:R_Small R12
U 1 1 5ED431E4
P 4750 2900
F 0 "R12" V 4800 2700 50  0000 C CNN
F 1 "R_0402_10K_5%" V 4850 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4750 2900 50  0001 C CNN
F 3 "~" H 4750 2900 50  0001 C CNN
	1    4750 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 2700 5350 2700
$Comp
L Device:C_Small C12
U 1 1 5ED43A6A
P 4950 2800
F 0 "C12" V 5179 2800 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 5088 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4950 2800 50  0001 C CNN
F 3 "~" H 4950 2800 50  0001 C CNN
	1    4950 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2900 4650 2900
Text Label 4150 2900 0    50   ~ 0
+3.3V_FTOUT
$Comp
L power:GND #PWR0107
U 1 1 5ED51413
P 4700 2800
F 0 "#PWR0107" H 4700 2550 50  0001 C CNN
F 1 "GND" V 4705 2672 50  0000 R CNN
F 2 "" H 4700 2800 50  0001 C CNN
F 3 "" H 4700 2800 50  0001 C CNN
	1    4700 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2900 5100 2900
Wire Wire Line
	5100 2800 5050 2800
Wire Wire Line
	5100 2800 5100 2900
Connection ~ 5100 2900
Wire Wire Line
	5100 2900 5350 2900
Wire Wire Line
	4850 2800 4700 2800
$Comp
L Device:R_Small R13
U 1 1 5ED5EC55
P 4850 3100
F 0 "R13" V 4900 2900 50  0000 C CNN
F 1 "R_0402_12K_1%" V 4950 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4850 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3100 5350 3100
Wire Wire Line
	4750 3100 4500 3100
$Comp
L power:GND #PWR0108
U 1 1 5ED6394E
P 4500 3100
F 0 "#PWR0108" H 4500 2850 50  0001 C CNN
F 1 "GND" V 4505 2972 50  0000 R CNN
F 2 "" H 4500 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5ED63CA4
P 5850 4950
F 0 "#PWR0109" H 5850 4700 50  0001 C CNN
F 1 "GND" H 5855 4777 50  0000 C CNN
F 2 "" H 5850 4950 50  0001 C CNN
F 3 "" H 5850 4950 50  0001 C CNN
	1    5850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4700 5850 4900
Wire Wire Line
	6850 4700 6850 4900
Wire Wire Line
	6850 4900 6750 4900
Connection ~ 5850 4900
Wire Wire Line
	5850 4900 5850 4950
Wire Wire Line
	5950 4700 5950 4900
Connection ~ 5950 4900
Wire Wire Line
	5950 4900 5850 4900
Wire Wire Line
	6050 4700 6050 4900
Connection ~ 6050 4900
Wire Wire Line
	6050 4900 5950 4900
Wire Wire Line
	6150 4700 6150 4900
Connection ~ 6150 4900
Wire Wire Line
	6150 4900 6050 4900
Wire Wire Line
	6250 4700 6250 4900
Connection ~ 6250 4900
Wire Wire Line
	6250 4900 6150 4900
Wire Wire Line
	6350 4700 6350 4900
Connection ~ 6350 4900
Wire Wire Line
	6350 4900 6250 4900
Wire Wire Line
	6450 4700 6450 4900
Connection ~ 6450 4900
Wire Wire Line
	6450 4900 6350 4900
Wire Wire Line
	6550 4700 6550 4900
Connection ~ 6550 4900
Wire Wire Line
	6550 4900 6450 4900
Wire Wire Line
	6650 4700 6650 4900
Connection ~ 6650 4900
Wire Wire Line
	6650 4900 6550 4900
Wire Wire Line
	6750 4700 6750 4900
Connection ~ 6750 4900
Wire Wire Line
	6750 4900 6650 4900
Wire Wire Line
	5350 4300 5250 4300
Wire Wire Line
	5250 4300 5250 4900
Wire Wire Line
	5250 4900 5850 4900
$Comp
L Device:Crystal_GND24_Small Y1
U 1 1 5ED86032
P 4300 3900
F 0 "Y1" V 4254 4044 50  0000 L CNN
F 1 "Crystal_GND24_Small" V 4400 3050 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_EuroQuartz_XO32-4Pin_3.2x2.5mm" H 4300 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
	1    4300 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3800 4300 3700
Wire Wire Line
	4300 3700 5100 3700
Wire Wire Line
	4300 4000 4300 4100
$Comp
L power:GND #PWR0110
U 1 1 5ED91B8E
P 3850 3900
F 0 "#PWR0110" H 3850 3650 50  0001 C CNN
F 1 "GND" V 3855 3772 50  0000 R CNN
F 2 "" H 3850 3900 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5ED95914
P 4600 3900
F 0 "#PWR0111" H 4600 3650 50  0001 C CNN
F 1 "GND" V 4605 3772 50  0000 R CNN
F 2 "" H 4600 3900 50  0001 C CNN
F 3 "" H 4600 3900 50  0001 C CNN
	1    4600 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3900 4500 3900
$Comp
L Device:C_Small C8
U 1 1 5EDA0F2A
P 4100 3700
F 0 "C8" V 4329 3700 50  0000 C CNN
F 1 "C_0402_20pF_50V_C0G" V 4238 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4100 3700 50  0001 C CNN
F 3 "~" H 4100 3700 50  0001 C CNN
	1    4100 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3700 4300 3700
Connection ~ 4300 3700
Wire Wire Line
	4000 3700 3950 3700
Wire Wire Line
	3950 3700 3950 3900
Wire Wire Line
	3850 3900 3950 3900
Connection ~ 3950 3900
Wire Wire Line
	3950 3900 4200 3900
Connection ~ 4500 3900
Connection ~ 4500 4100
Wire Wire Line
	4500 4100 5100 4100
$Comp
L Device:R_Small R14
U 1 1 5EDA9CC8
P 5100 3900
F 0 "R14" V 5150 3700 50  0000 C CNN
F 1 "R_0402_1M_5%" V 5200 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5100 3900 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
	1    5100 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3800 5100 3700
Connection ~ 5100 3700
Wire Wire Line
	5100 3700 5350 3700
Wire Wire Line
	5100 4000 5100 4100
Connection ~ 5100 4100
Wire Wire Line
	5100 4100 5350 4100
Wire Wire Line
	4300 4100 4500 4100
Wire Wire Line
	4500 3900 4400 3900
$Comp
L Device:C_Small C9
U 1 1 5EDA9391
P 4500 4000
F 0 "C9" H 4592 4046 50  0000 L CNN
F 1 "C_0402_20pF_50V_C0G" H 3650 3900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4500 4000 50  0001 C CNN
F 3 "~" H 4500 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3300 4550 3300
Wire Wire Line
	5350 3400 4550 3400
Wire Wire Line
	5350 3500 4550 3500
Text Label 4750 3300 0    50   ~ 0
EE_CS
Text Label 4750 3400 0    50   ~ 0
EE_CLK
Text Label 4750 3500 0    50   ~ 0
EE_DATA
$Comp
L Memory_EEPROM:93LCxxB U2
U 1 1 5EDCAE4D
P 5050 6300
F 0 "U2" H 5050 6781 50  0000 C CNN
F 1 "93LCxxB" H 5050 6690 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5050 6300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001749K.pdf" H 5050 6300 50  0001 C CNN
	1    5050 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5EDCC06B
P 4550 5750
F 0 "R11" V 4354 5750 50  0000 C CNN
F 1 "R_0402_0_5%" V 4445 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4550 5750 50  0001 C CNN
F 3 "~" H 4550 5750 50  0001 C CNN
	1    4550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 5750 4450 5750
Wire Wire Line
	4650 5750 5050 5750
Wire Wire Line
	5050 5750 5050 6000
Text Label 4000 5750 0    50   ~ 0
+3.3V_FTOUT
Text Label 4700 5750 0    50   ~ 0
+3.3V_ROM
$Comp
L Device:R_Small R15
U 1 1 5EDE0E2A
P 5800 6400
F 0 "R15" V 5604 6400 50  0000 C CNN
F 1 "R_0402_2.2K_5%" V 5750 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5800 6400 50  0001 C CNN
F 3 "~" H 5800 6400 50  0001 C CNN
	1    5800 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 6400 5550 6400
Wire Wire Line
	5450 6300 6300 6300
Wire Wire Line
	6300 6300 6300 6400
Wire Wire Line
	6300 6400 5900 6400
$Comp
L Device:R_Small R16
U 1 1 5EDEB901
P 5800 6600
F 0 "R16" V 5604 6600 50  0000 C CNN
F 1 "R_040210K_5%" V 5900 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5800 6600 50  0001 C CNN
F 3 "~" H 5800 6600 50  0001 C CNN
	1    5800 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 6400 5550 6600
Wire Wire Line
	5550 6600 5700 6600
Connection ~ 5550 6400
Wire Wire Line
	5550 6400 5450 6400
Text Label 5950 6600 0    50   ~ 0
+3.3V_ROM
Wire Wire Line
	5900 6600 6400 6600
$Comp
L power:GND #PWR0112
U 1 1 5EDFCDD4
P 5050 6750
F 0 "#PWR0112" H 5050 6500 50  0001 C CNN
F 1 "GND" H 5055 6577 50  0000 C CNN
F 2 "" H 5050 6750 50  0001 C CNN
F 3 "" H 5050 6750 50  0001 C CNN
	1    5050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6750 5050 6600
Wire Wire Line
	5450 6200 5550 6200
Text Label 5600 6300 0    50   ~ 0
EE_DATA
Text Label 5600 6200 0    50   ~ 0
EE_CLK
Text Label 4350 6200 0    50   ~ 0
EE_CS
$Comp
L Device:C_Small C14
U 1 1 5EE20313
P 5300 5750
F 0 "C14" V 5071 5750 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 5162 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5300 5750 50  0001 C CNN
F 3 "~" H 5300 5750 50  0001 C CNN
	1    5300 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 5750 5050 5750
Connection ~ 5050 5750
$Comp
L power:GND #PWR0113
U 1 1 5EE2645E
P 5500 5750
F 0 "#PWR0113" H 5500 5500 50  0001 C CNN
F 1 "GND" V 5505 5622 50  0000 R CNN
F 2 "" H 5500 5750 50  0001 C CNN
F 3 "" H 5500 5750 50  0001 C CNN
	1    5500 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5750 5400 5750
$Comp
L Device:L_Small L2
U 1 1 5EE2E640
P 3600 750
F 0 "L2" V 3785 750 50  0000 C CNN
F 1 "100ohm_bead" V 3694 750 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 3600 750 50  0001 C CNN
F 3 "~" H 3600 750 50  0001 C CNN
	1    3600 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 750  3500 750 
Wire Wire Line
	3700 750  3850 750 
$Comp
L Device:C_Small C7
U 1 1 5EE40986
P 3850 950
F 0 "C7" H 3758 904 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" H 3758 995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3850 950 50  0001 C CNN
F 3 "~" H 3850 950 50  0001 C CNN
	1    3850 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 850  3850 750 
Connection ~ 3850 750 
$Comp
L power:GND #PWR0114
U 1 1 5EE47147
P 3850 1150
F 0 "#PWR0114" H 3850 900 50  0001 C CNN
F 1 "GND" H 3855 977 50  0000 C CNN
F 2 "" H 3850 1150 50  0001 C CNN
F 3 "" H 3850 1150 50  0001 C CNN
	1    3850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1050 3850 1150
Text Label 3000 750  0    50   ~ 0
+3.3V_FTOUT
Wire Wire Line
	3850 750  4250 750 
Text Label 4150 750  2    50   ~ 0
+3.3V_PHY
$Comp
L Device:L_Small L4
U 1 1 5EE66B8D
P 10100 800
F 0 "L4" V 10285 800 50  0000 C CNN
F 1 "100ohm_bead" V 10194 800 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 10100 800 50  0001 C CNN
F 3 "~" H 10100 800 50  0001 C CNN
	1    10100 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 800  10000 800 
Wire Wire Line
	10200 800  10350 800 
$Comp
L Device:C_Small C18
U 1 1 5EE66B95
P 10350 1000
F 0 "C18" H 10258 954 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" H 11350 1000 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10350 1000 50  0001 C CNN
F 3 "~" H 10350 1000 50  0001 C CNN
	1    10350 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 900  10350 800 
Connection ~ 10350 800 
$Comp
L power:GND #PWR0115
U 1 1 5EE66B9D
P 10350 1200
F 0 "#PWR0115" H 10350 950 50  0001 C CNN
F 1 "GND" H 10355 1027 50  0000 C CNN
F 2 "" H 10350 1200 50  0001 C CNN
F 3 "" H 10350 1200 50  0001 C CNN
	1    10350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1100 10350 1200
Text Label 9500 800  0    50   ~ 0
+3.3V_FTOUT
Wire Wire Line
	10350 800  10750 800 
Text Label 10650 800  2    50   ~ 0
+3.3V_PLL
$Comp
L Device:L_Small L1
U 1 1 5EE6DC10
P 1900 750
F 0 "L1" V 2085 750 50  0000 C CNN
F 1 "100ohm_bead" V 1994 750 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 1900 750 50  0001 C CNN
F 3 "~" H 1900 750 50  0001 C CNN
	1    1900 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 750  1800 750 
Wire Wire Line
	2000 750  2150 750 
$Comp
L Device:C_Small C3
U 1 1 5EE6DC18
P 2150 950
F 0 "C3" H 2058 904 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" V 2050 1700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2150 950 50  0001 C CNN
F 3 "~" H 2150 950 50  0001 C CNN
	1    2150 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 850  2150 750 
Connection ~ 2150 750 
$Comp
L power:GND #PWR0116
U 1 1 5EE6DC20
P 2150 1150
F 0 "#PWR0116" H 2150 900 50  0001 C CNN
F 1 "GND" H 2155 977 50  0000 C CNN
F 2 "" H 2150 1150 50  0001 C CNN
F 3 "" H 2150 1150 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1050 2150 1100
Text Label 1300 750  0    50   ~ 0
+3.3V_FTOUT
Wire Wire Line
	2150 750  2450 750 
Text Label 2450 750  2    50   ~ 0
+3.3V_VCCIO
Wire Wire Line
	6050 1700 6050 1300
Wire Wire Line
	6050 1300 5350 1300
Wire Wire Line
	6150 1700 6150 1150
Wire Wire Line
	6150 1150 5350 1150
Text Label 5500 1300 0    50   ~ 0
+3.3V_PHY
Text Label 5500 1150 0    50   ~ 0
+3.3V_PLL
Wire Wire Line
	6250 1700 6250 1150
Wire Wire Line
	6250 950  5350 950 
Wire Wire Line
	6250 1150 6350 1150
Wire Wire Line
	6350 1150 6350 1700
Connection ~ 6250 1150
Wire Wire Line
	6250 1150 6250 950 
Wire Wire Line
	6350 1150 6450 1150
Wire Wire Line
	6450 1150 6450 1700
Connection ~ 6350 1150
Text Label 5500 950  0    50   ~ 0
+3.3V_VCCIO
Wire Wire Line
	7150 2000 8500 2000
Wire Wire Line
	7150 2100 8500 2100
Wire Wire Line
	7150 2200 8500 2200
Wire Wire Line
	7150 2300 8500 2300
Wire Wire Line
	7150 2400 8500 2400
Wire Wire Line
	7150 2500 8500 2500
Wire Wire Line
	7150 2600 8500 2600
Wire Wire Line
	7150 2700 8500 2700
Wire Wire Line
	7150 2900 8500 2900
Wire Wire Line
	7150 3000 8500 3000
Wire Wire Line
	7150 3100 8500 3100
Wire Wire Line
	7150 3200 8500 3200
Wire Wire Line
	7150 3300 8500 3300
Wire Wire Line
	7150 3400 8500 3400
Wire Wire Line
	7150 3600 8500 3600
Text Label 7600 2000 2    50   ~ 0
D0
Text Label 7500 2100 0    50   ~ 0
D1
Text Label 7500 2200 0    50   ~ 0
D2
Text Label 7500 2300 0    50   ~ 0
D3
Text Label 7500 2400 0    50   ~ 0
D4
Text Label 7500 2500 0    50   ~ 0
D5
Text Label 7500 2600 0    50   ~ 0
D6
Text Label 7500 2700 0    50   ~ 0
D7
Text Label 7500 2900 0    50   ~ 0
C0
Text Label 7500 3000 0    50   ~ 0
C1
Text Label 7500 3100 0    50   ~ 0
C2
Text Label 7500 3200 0    50   ~ 0
C3
Text Label 7500 3300 0    50   ~ 0
I2C_CONNECT
Text Label 7500 3400 0    50   ~ 0
3.3V_OUT_EN
Wire Wire Line
	1200 4850 1550 4850
$Comp
L Device:R_Small R2
U 1 1 5EF71FFB
P 1850 5150
F 0 "R2" V 1900 4950 50  0000 C CNN
F 1 "R_0402_100K_5%" H 1450 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1850 5150 50  0001 C CNN
F 3 "~" H 1850 5150 50  0001 C CNN
	1    1850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5050 1850 4950
Wire Wire Line
	1850 4950 2150 4950
Wire Wire Line
	1850 5250 1850 5300
Wire Wire Line
	1850 5300 2550 5300
Wire Wire Line
	1850 4950 1700 4950
Wire Wire Line
	1700 4950 1700 5050
Connection ~ 1850 4950
Text Label 1200 5050 0    50   ~ 0
3.3V_OUT_EN
Wire Wire Line
	1200 5050 1700 5050
Text Label 7500 3600 0    50   ~ 0
5V_OUT_EN
Text Label 7500 3700 0    50   ~ 0
7.5M_CLK
Text Label 7200 3800 0    50   ~ 0
CONFIG_DONE#
Wire Wire Line
	7150 3800 7850 3800
$Comp
L Device:LED D1
U 1 1 5EFCD098
P 8000 3800
F 0 "D1" H 7993 4017 50  0000 C CNN
F 1 "LED" H 7993 3926 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8000 3800 50  0001 C CNN
F 3 "~" H 8000 3800 50  0001 C CNN
	1    8000 3800
	1    0    0    -1  
$EndComp
Text Label 8250 3800 0    50   ~ 0
CONFIG_DONE
$Comp
L Device:R_Small R20
U 1 1 5EFD86EF
P 8950 3800
F 0 "R20" V 9000 3600 50  0000 C CNN
F 1 "R_0402_2.2K_5%" V 9050 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 3800 50  0001 C CNN
F 3 "~" H 8950 3800 50  0001 C CNN
	1    8950 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3800 8850 3800
Text Label 9150 3800 0    50   ~ 0
+3.3V_FTOUT
Wire Wire Line
	9050 3800 9650 3800
Wire Wire Line
	7150 3700 8500 3700
$Comp
L power:GND #PWR0117
U 1 1 5F0111DE
P 9350 6250
F 0 "#PWR0117" H 9350 6000 50  0001 C CNN
F 1 "GND" H 9355 6077 50  0000 C CNN
F 2 "" H 9350 6250 50  0001 C CNN
F 3 "" H 9350 6250 50  0001 C CNN
	1    9350 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5F04E972
P 8450 5650
F 0 "R17" V 8254 5650 50  0000 C CNN
F 1 "R_0402_10K_5%" V 8550 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8450 5650 50  0001 C CNN
F 3 "~" H 8450 5650 50  0001 C CNN
	1    8450 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5F04EF68
P 8800 5850
F 0 "R19" V 8604 5850 50  0000 C CNN
F 1 "R_0402_47K_5%" H 9150 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8800 5850 50  0001 C CNN
F 3 "~" H 8800 5850 50  0001 C CNN
	1    8800 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 5750 8800 5650
Wire Wire Line
	8800 5650 9050 5650
Wire Wire Line
	8800 5950 8800 6150
Wire Wire Line
	8800 6150 9350 6150
Wire Wire Line
	9350 6150 9350 6250
Wire Wire Line
	8550 5650 8800 5650
Connection ~ 8800 5650
Wire Wire Line
	8350 5650 7750 5650
Text Label 7850 5650 0    50   ~ 0
5V_OUT_EN
Text Label 8650 5650 0    50   ~ 0
5V_EN
$Comp
L Device:R_Small R21
U 1 1 5F0A6B31
P 9350 6000
F 0 "R21" V 9154 6000 50  0000 C CNN
F 1 "R_0402_10K_5%" H 9000 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9350 6000 50  0001 C CNN
F 3 "~" H 9350 6000 50  0001 C CNN
	1    9350 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 5850 9350 5900
Wire Wire Line
	9350 6100 9350 6150
Connection ~ 9350 6150
$Comp
L Device:R_Small R18
U 1 1 5F0D49F3
P 8600 5450
F 0 "R18" V 8404 5450 50  0000 C CNN
F 1 "R_0402_10K_5%" V 8700 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8600 5450 50  0001 C CNN
F 3 "~" H 8600 5450 50  0001 C CNN
	1    8600 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5F0D632E
P 8600 5350
F 0 "C16" V 8371 5350 50  0000 C CNN
F 1 "C_0402_100nF_16V_X7R" V 8550 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8600 5350 50  0001 C CNN
F 3 "~" H 8600 5350 50  0001 C CNN
	1    8600 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 5350 8800 5350
Wire Wire Line
	8800 5350 8800 5450
Wire Wire Line
	8800 5450 8700 5450
Wire Wire Line
	8800 5450 9050 5450
Connection ~ 8800 5450
Wire Wire Line
	8500 5350 8350 5350
Wire Wire Line
	8350 5350 8350 5450
Wire Wire Line
	8350 5450 8500 5450
Wire Wire Line
	9050 5250 8350 5250
Wire Wire Line
	8350 5250 8350 5350
Connection ~ 8350 5350
Wire Wire Line
	8350 5250 8000 5250
Connection ~ 8350 5250
Text Label 8000 5250 0    50   ~ 0
VBUS_5V
Text Label 9750 5250 0    50   ~ 0
+5V_OUT
Wire Wire Line
	9650 5250 9850 5250
$Comp
L Device:C_Small C17
U 1 1 5F11FC98
P 9850 5700
F 0 "C17" H 9758 5654 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" H 9758 5745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9850 5700 50  0001 C CNN
F 3 "~" H 9850 5700 50  0001 C CNN
	1    9850 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 5600 9850 5250
Connection ~ 9850 5250
Wire Wire Line
	9850 5250 10150 5250
Wire Wire Line
	9850 5800 9850 6150
Wire Wire Line
	9850 6150 9350 6150
$Comp
L 74xGxx:74LVC1G66 U4
U 1 1 5F156ED8
P 8150 1250
F 0 "U4" H 8150 1566 50  0000 C CNN
F 1 "74LVC1G66" H 8150 1475 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 8150 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g66.pdf" H 8150 1250 50  0001 C CNN
	1    8150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 750  7450 750 
Text Label 7450 750  0    50   ~ 0
+3.3V_FTOUT
$Comp
L power:GND #PWR0118
U 1 1 5F166F5F
P 8200 1600
F 0 "#PWR0118" H 8200 1350 50  0001 C CNN
F 1 "GND" H 8205 1427 50  0000 C CNN
F 2 "" H 8200 1600 50  0001 C CNN
F 3 "" H 8200 1600 50  0001 C CNN
	1    8200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1400 8200 1600
Wire Wire Line
	7900 1250 7450 1250
Wire Wire Line
	8400 1250 8750 1250
Text Label 7600 1250 0    50   ~ 0
D1
Text Label 8500 1250 0    50   ~ 0
D2
Wire Wire Line
	7900 1400 7450 1400
Text Label 7450 1400 0    50   ~ 0
I2C_CONNECT
$Comp
L Device:L_Small L3
U 1 1 5ED0EE87
P 8100 750
F 0 "L3" V 8285 750 50  0000 C CNN
F 1 "100ohm_bead" V 8194 750 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8100 750 50  0001 C CNN
F 3 "~" H 8100 750 50  0001 C CNN
	1    8100 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 750  8200 1100
$Comp
L Device:C_Small C15
U 1 1 5ED507C4
P 8450 750
F 0 "C15" H 8358 704 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" V 8358 795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8450 750 50  0001 C CNN
F 3 "~" H 8450 750 50  0001 C CNN
	1    8450 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 750  8200 750 
Connection ~ 8200 750 
$Comp
L power:GND #PWR0119
U 1 1 5ED5E29A
P 8650 750
F 0 "#PWR0119" H 8650 500 50  0001 C CNN
F 1 "GND" H 8655 577 50  0000 C CNN
F 2 "" H 8650 750 50  0001 C CNN
F 3 "" H 8650 750 50  0001 C CNN
	1    8650 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 750  8550 750 
Wire Wire Line
	9650 2300 9300 2300
Wire Wire Line
	9300 2400 9650 2400
Wire Wire Line
	9650 2500 9300 2500
Wire Wire Line
	9650 2600 9300 2600
Wire Wire Line
	9650 2700 9300 2700
Wire Wire Line
	9650 2800 9300 2800
Wire Wire Line
	9650 2900 9300 2900
Wire Wire Line
	9650 3000 9300 3000
Wire Wire Line
	10150 2300 10550 2300
Wire Wire Line
	10150 2400 10550 2400
Wire Wire Line
	10150 2500 10550 2500
Wire Wire Line
	10150 2600 10550 2600
Wire Wire Line
	10150 2700 10550 2700
Wire Wire Line
	10150 2800 10550 2800
Wire Wire Line
	10150 2900 10550 2900
Wire Wire Line
	10150 3000 10550 3000
Text Label 9400 2300 0    50   ~ 0
D0
Text Label 9400 2400 0    50   ~ 0
D1
Text Label 9400 2500 0    50   ~ 0
D2
Text Label 9400 2600 0    50   ~ 0
D3
Text Label 9400 2700 0    50   ~ 0
D4
Text Label 9400 2800 0    50   ~ 0
D5
Text Label 9400 2900 0    50   ~ 0
D6
Text Label 9400 3000 0    50   ~ 0
D7
Text Label 10250 2300 0    50   ~ 0
C0
Text Label 10250 2400 0    50   ~ 0
C1
Text Label 10250 2500 0    50   ~ 0
C2
Text Label 10250 2600 0    50   ~ 0
C3
Text Label 10250 2700 0    50   ~ 0
7.5M_CLK
Text Label 10250 2800 0    50   ~ 0
3.3V_OUT
Text Label 10250 2900 0    50   ~ 0
5V_OUT
Text Label 10250 3000 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J2
U 1 1 5EE11798
P 9850 2600
F 0 "J2" H 9900 3117 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 9900 3026 50  0000 C CNN
F 2 "sl_v2:Connector_02X08_SMD_C" H 9850 2600 50  0001 C CNN
F 3 "~" H 9850 2600 50  0001 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDC6330L Q2
U 1 1 5F00EE6D
P 9350 5550
F 0 "Q2" H 9350 6092 50  0000 C CNN
F 1 "FDC6330L" H 9350 6001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 9300 4975 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/FDC6330L-D.PDF" H 9250 5450 50  0001 C CNN
	1    9350 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5EE41CBB
P 5750 5950
F 0 "R23" V 5554 5950 50  0000 C CNN
F 1 "R_0402_10K_5%" V 5850 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5750 5950 50  0001 C CNN
F 3 "~" H 5750 5950 50  0001 C CNN
	1    5750 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5950 5550 5950
Wire Wire Line
	5550 5950 5550 6200
Connection ~ 5550 6200
Wire Wire Line
	5550 6200 6300 6200
Wire Wire Line
	5850 5950 6350 5950
Text Label 5950 5950 0    50   ~ 0
+3.3V_ROM
Wire Wire Line
	3950 6200 4600 6200
$Comp
L Device:R_Small R22
U 1 1 5EE72164
P 4400 6350
F 0 "R22" V 4204 6350 50  0000 C CNN
F 1 "R_0402_10K_5%" V 4500 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4400 6350 50  0001 C CNN
F 3 "~" H 4400 6350 50  0001 C CNN
	1    4400 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6350 4600 6350
Wire Wire Line
	4600 6350 4600 6200
Connection ~ 4600 6200
Wire Wire Line
	4600 6200 4650 6200
Wire Wire Line
	4300 6350 3950 6350
Text Label 3950 6350 0    50   ~ 0
+3.3V_ROM
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 5EE9F14F
P 2150 7050
F 0 "Q3" H 2341 7096 50  0000 L CNN
F 1 "MMBT3904" H 2341 7005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 7050 50  0001 L CNN
	1    2150 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5EEC4ECA
P 2250 7450
F 0 "#PWR0120" H 2250 7200 50  0001 C CNN
F 1 "GND" H 2255 7277 50  0000 C CNN
F 2 "" H 2250 7450 50  0001 C CNN
F 3 "" H 2250 7450 50  0001 C CNN
	1    2250 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7250 2250 7400
$Comp
L Device:R_Small R25
U 1 1 5EEE971C
P 1850 7200
F 0 "R25" V 1900 7000 50  0000 C CNN
F 1 "R_0402_47K_5%" V 1950 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1850 7200 50  0001 C CNN
F 3 "~" H 1850 7200 50  0001 C CNN
	1    1850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7100 1850 7050
Wire Wire Line
	1850 7050 1950 7050
Wire Wire Line
	1850 7300 1850 7400
Wire Wire Line
	1850 7400 2250 7400
Connection ~ 2250 7400
Wire Wire Line
	2250 7400 2250 7450
$Comp
L Device:R_Small R24
U 1 1 5EF0D426
P 1650 7050
F 0 "R24" V 1700 6850 50  0000 C CNN
F 1 "R_0402_47K_5%" V 1750 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1650 7050 50  0001 C CNN
F 3 "~" H 1650 7050 50  0001 C CNN
	1    1650 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 7050 1850 7050
Connection ~ 1850 7050
Wire Wire Line
	800  7050 1550 7050
Text Label 800  7050 0    50   ~ 0
I2C_CONNECT
NoConn ~ 7150 3500
Wire Wire Line
	2250 6650 2250 6850
$Comp
L Device:C_Small C19
U 1 1 5EF97EB1
P 2450 950
F 0 "C19" H 2358 904 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" V 2350 1700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2450 950 50  0001 C CNN
F 3 "~" H 2450 950 50  0001 C CNN
	1    2450 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 850  2450 750 
Connection ~ 2450 750 
Wire Wire Line
	2450 1050 2450 1100
Wire Wire Line
	2450 1100 2150 1100
Connection ~ 2150 1100
Wire Wire Line
	2150 1100 2150 1150
$Comp
L Device:C_Small C20
U 1 1 5EFBFB87
P 2750 950
F 0 "C20" H 2658 904 50  0000 R CNN
F 1 "C_0402_100nF_16V_X7R" V 2650 1700 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2750 950 50  0001 C CNN
F 3 "~" H 2750 950 50  0001 C CNN
	1    2750 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 750  2750 850 
Wire Wire Line
	2450 750  2750 750 
Wire Wire Line
	2750 1050 2750 1100
Wire Wire Line
	2750 1100 2450 1100
Connection ~ 2450 1100
Text Label 5150 2900 0    50   ~ 0
FT_RST
$EndSCHEMATC

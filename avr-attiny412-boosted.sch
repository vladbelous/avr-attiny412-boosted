EESchema Schematic File Version 4
LIBS:avr-attiny412-boosted-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "AVR ATtiny412 with integrated boost regulator"
Date "2019-04-03"
Rev "1"
Comp ""
Comment1 "creativecommons.org/licenses"
Comment2 "CC BY-SA 4.0"
Comment3 "(C) Vlad Belous"
Comment4 ""
$EndDescr
$Comp
L local_symbols:attiny412 U3
U 1 1 5CA5A3F1
P 7600 2200
F 0 "U3" H 7600 2873 50  0000 C CNN
F 1 "attiny412" H 7600 2780 50  0000 C CNN
F 2 "local_footprints:SOIC-8_3.9x4.9mm_Pitch1.27mm_HS" H 7700 2200 50  0001 C CNN
F 3 "" H 7700 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:MCP1640 U1
U 1 1 5CA5DBC4
P 4100 2000
F 0 "U1" H 4150 2500 50  0000 C CNN
F 1 "MCP1640" H 4250 2400 50  0000 C CNN
F 2 "local_footprints:SOT-23-6_HS" H 4100 2000 50  0001 C CNN
F 3 "" H 4100 2000 50  0001 C CNN
	1    4100 2000
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:MIC809 U2
U 1 1 5CA5EF61
P 2300 3300
F 0 "U2" H 2067 3447 50  0000 R CNN
F 1 "MIC809" H 2067 3354 50  0000 R CNN
F 2 "local_footprints:SOT-23_HS" H 2300 3300 50  0001 C CNN
F 3 "" H 2300 3300 50  0001 C CNN
	1    2300 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5CA6454D
P 3350 2050
F 0 "R1" H 3409 2097 50  0000 L CNN
F 1 "100k" H 3409 2004 50  0000 L CNN
F 2 "local_footprints:0805_HS" H 3350 2050 50  0001 C CNN
F 3 "~" H 3350 2050 50  0001 C CNN
	1    3350 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5CA65A2C
P 3350 2350
F 0 "R2" H 3409 2397 50  0000 L CNN
F 1 "100k" H 3409 2304 50  0000 L CNN
F 2 "local_footprints:0805_HS" H 3350 2350 50  0001 C CNN
F 3 "~" H 3350 2350 50  0001 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CA660DB
P 3350 2500
F 0 "#PWR04" H 3350 2250 50  0001 C CNN
F 1 "GND" H 3354 2321 50  0000 C CNN
F 2 "" H 3350 2500 50  0001 C CNN
F 3 "" H 3350 2500 50  0001 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2450 3350 2500
Wire Wire Line
	3600 2200 3350 2200
Wire Wire Line
	3350 2150 3350 2200
Connection ~ 3350 2200
Wire Wire Line
	3350 2200 3350 2250
Wire Wire Line
	3350 1900 3350 1950
$Comp
L power:GND #PWR02
U 1 1 5CA67BCF
P 2300 3600
F 0 "#PWR02" H 2300 3350 50  0001 C CNN
F 1 "GND" H 2304 3421 50  0000 C CNN
F 2 "" H 2300 3600 50  0001 C CNN
F 3 "" H 2300 3600 50  0001 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
Text Notes 3100 3400 0    50   ~ 0
Place either:\n  R2 + MIC809: voltage supervisor enabled\n  (useful when using Li-Ion batteries)\nor\n  R1: bypass superviser, boost always on\n  (useful when using non-rechargeable)
$Comp
L power:GND #PWR06
U 1 1 5CA680CD
P 4200 2600
F 0 "#PWR06" H 4200 2350 50  0001 C CNN
F 1 "GND" H 4204 2421 50  0000 C CNN
F 2 "" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5CA6AFCA
P 2150 1900
F 0 "F1" V 1917 1900 50  0000 C CNN
F 1 "Polyfuse" V 2010 1900 50  0000 C CNN
F 2 "local_footprints:1206_HS" H 2200 1700 50  0001 L CNN
F 3 "~" H 2150 1900 50  0001 C CNN
	1    2150 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 1900 2000 1900
Wire Wire Line
	1800 2000 1900 2000
Wire Wire Line
	1900 2000 1900 2100
$Comp
L power:GND #PWR01
U 1 1 5CA6DD23
P 1900 2100
F 0 "#PWR01" H 1900 1850 50  0001 C CNN
F 1 "GND" H 1904 1921 50  0000 C CNN
F 2 "" H 1900 2100 50  0001 C CNN
F 3 "" H 1900 2100 50  0001 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
Connection ~ 3350 1900
Wire Wire Line
	3350 1900 3600 1900
$Comp
L Device:C C1
U 1 1 5CA84421
P 2600 2200
F 0 "C1" H 2400 2250 50  0000 L CNN
F 1 "10uF" H 2300 2150 50  0000 L CNN
F 2 "local_footprints:1206_HS" H 2638 2050 50  0001 C CNN
F 3 "~" H 2600 2200 50  0001 C CNN
	1    2600 2200
	1    0    0    -1  
$EndComp
Connection ~ 2600 1900
Wire Wire Line
	2600 1900 3100 1900
Wire Wire Line
	2600 1900 2600 2050
$Comp
L power:GND #PWR03
U 1 1 5CA86A14
P 2600 2500
F 0 "#PWR03" H 2600 2250 50  0001 C CNN
F 1 "GND" H 2604 2321 50  0000 C CNN
F 2 "" H 2600 2500 50  0001 C CNN
F 3 "" H 2600 2500 50  0001 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2350 2600 2500
Text Notes 3150 2100 0    50   ~ 0
DNP
Wire Wire Line
	4000 1500 4000 1400
$Comp
L Device:L L1
U 1 1 5CA87E91
P 3550 1400
F 0 "L1" V 3748 1400 50  0000 C CNN
F 1 "4.7uH" V 3655 1400 50  0000 C CNN
F 2 "local_footprints:L_Taiyo-Yuden_NR-S-40xx_HS" H 3550 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1400 4000 1400
Wire Wire Line
	3400 1400 3100 1400
Wire Wire Line
	3100 1400 3100 1900
Connection ~ 3100 1900
Wire Wire Line
	3100 1900 3350 1900
Connection ~ 2500 1900
Wire Wire Line
	2500 1900 2600 1900
Wire Wire Line
	2300 1900 2500 1900
Text GLabel 2600 1750 2    50   Input ~ 0
VBAT
Wire Wire Line
	2500 1750 2600 1750
Wire Wire Line
	2500 1900 2500 1750
Text GLabel 2100 2700 0    50   Input ~ 0
VBAT
Wire Wire Line
	2100 2700 2200 2700
Wire Wire Line
	2200 2700 2200 2800
Wire Wire Line
	2700 3100 3000 3100
Wire Wire Line
	3000 3100 3000 2200
Wire Wire Line
	3000 2200 3350 2200
Text Notes 2250 2950 0    50   ~ 0
Vth = 2.93V
Text Notes 2050 2100 0    50   ~ 0
750mA
$Comp
L Device:R R3
U 1 1 5CA94EBA
P 4800 1950
F 0 "R3" H 4870 1997 50  0000 L CNN
F 1 "R" H 4870 1904 50  0000 L CNN
F 2 "local_footprints:0805_HS" V 4730 1950 50  0001 C CNN
F 3 "~" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CA9677D
P 4800 2250
F 0 "R4" H 4870 2297 50  0000 L CNN
F 1 "R" H 4870 2204 50  0000 L CNN
F 2 "local_footprints:0805_HS" V 4730 2250 50  0001 C CNN
F 3 "~" H 4800 2250 50  0001 C CNN
	1    4800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2100 4800 2100
Connection ~ 4800 2100
$Comp
L power:GND #PWR07
U 1 1 5CA97532
P 4800 2500
F 0 "#PWR07" H 4800 2250 50  0001 C CNN
F 1 "GND" H 4804 2321 50  0000 C CNN
F 2 "" H 4800 2500 50  0001 C CNN
F 3 "" H 4800 2500 50  0001 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2400 4800 2500
Wire Wire Line
	4600 1800 4800 1800
$Comp
L Device:C C2
U 1 1 5CA983ED
P 5200 2100
F 0 "C2" H 5300 2100 50  0000 L CNN
F 1 "4.7uF" H 5250 2000 50  0000 L CNN
F 2 "local_footprints:1206_HS" H 5238 1950 50  0001 C CNN
F 3 "~" H 5200 2100 50  0001 C CNN
	1    5200 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CA9BF79
P 5200 2400
F 0 "#PWR09" H 5200 2150 50  0001 C CNN
F 1 "GND" H 5204 2221 50  0000 C CNN
F 2 "" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1800 5200 1800
Wire Wire Line
	5200 1800 5200 1950
Connection ~ 4800 1800
Wire Wire Line
	5200 2250 5200 2400
Wire Wire Line
	5600 1800 5600 1950
Connection ~ 5200 1800
$Comp
L Device:C C3
U 1 1 5CA9E566
P 5600 2100
F 0 "C3" H 5700 2100 50  0000 L CNN
F 1 "10uF" H 5650 2000 50  0000 L CNN
F 2 "local_footprints:1210_HS" H 5638 1950 50  0001 C CNN
F 3 "~" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2250 5600 2400
$Comp
L power:GND #PWR010
U 1 1 5CA9F86F
P 5600 2400
F 0 "#PWR010" H 5600 2150 50  0001 C CNN
F 1 "GND" H 5604 2221 50  0000 C CNN
F 2 "" H 5600 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
	1    5600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1800 5600 1800
Text Notes 4400 1550 0    50   ~ 0
Pin-compatible with:\n\n  MCP1640:\n    FB = 1.21V\n\n  MCP16251:\n    FB = 1.23V\n\n  TPS61070 / TPS61073:\n    FB = 0.5V
Wire Wire Line
	5600 1800 5900 1800
Connection ~ 5600 1800
Text GLabel 5900 1800 2    50   Input ~ 0
VPP
$Comp
L Device:C_Small C4
U 1 1 5CAA3A04
P 7000 2050
F 0 "C4" H 6750 2100 50  0000 L CNN
F 1 "0.1uF" H 6700 2000 50  0000 L CNN
F 2 "local_footprints:0805_HS" H 7000 2050 50  0001 C CNN
F 3 "~" H 7000 2050 50  0001 C CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1800 7000 1800
Wire Wire Line
	7000 1800 7000 1950
Wire Wire Line
	7000 2150 7000 2300
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	7000 2300 7000 2400
Connection ~ 7000 2300
$Comp
L power:GND #PWR012
U 1 1 5CAA5D53
P 7000 2400
F 0 "#PWR012" H 7000 2150 50  0001 C CNN
F 1 "GND" H 7004 2221 50  0000 C CNN
F 2 "" H 7000 2400 50  0001 C CNN
F 3 "" H 7000 2400 50  0001 C CNN
	1    7000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1800 6900 1800
Connection ~ 7000 1800
Text GLabel 6900 1800 0    50   Input ~ 0
VPP
Text GLabel 8100 1800 2    50   Input ~ 0
PA6
Text GLabel 8100 1900 2    50   Input ~ 0
PA7
Text GLabel 8100 2000 2    50   Input ~ 0
PA1
Text GLabel 8100 2100 2    50   Input ~ 0
PA2
Text GLabel 8900 2200 2    50   Input ~ 0
UPDI
Text GLabel 8100 2300 2    50   Input ~ 0
PA3
$Comp
L Device:R R5
U 1 1 5CAAC339
P 8650 2200
F 0 "R5" V 8440 2200 50  0000 C CNN
F 1 "3.3k" V 8533 2200 50  0000 C CNN
F 2 "local_footprints:0805_HS" V 8580 2200 50  0001 C CNN
F 3 "~" H 8650 2200 50  0001 C CNN
	1    8650 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 2200 8900 2200
$Comp
L Switch:SW_Push SW1
U 1 1 5CAAF6FF
P 8400 2500
F 0 "SW1" V 8353 2653 50  0000 L CNN
F 1 "SW_Push" V 8446 2653 50  0000 L CNN
F 2 "local_footprints:SW_SPST_PUSH_6mm_3mm" H 8400 2700 50  0001 C CNN
F 3 "~" H 8400 2700 50  0001 C CNN
	1    8400 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2200 8400 2200
Wire Wire Line
	8400 2200 8400 2300
Connection ~ 8400 2200
Wire Wire Line
	8400 2200 8500 2200
$Comp
L power:GND #PWR015
U 1 1 5CAB309F
P 8400 2800
F 0 "#PWR015" H 8400 2550 50  0001 C CNN
F 1 "GND" H 8404 2621 50  0000 C CNN
F 2 "" H 8400 2800 50  0001 C CNN
F 3 "" H 8400 2800 50  0001 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2700 8400 2800
Text Notes 8550 2850 0    50   ~ 0
SW1: reset in software\nor other functionality
Text GLabel 4000 4500 2    50   Input ~ 0
PA1
Text GLabel 4000 4600 2    50   Input ~ 0
PA2
Text GLabel 4000 4700 2    50   Input ~ 0
PA3
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 5CAB5AF7
P 3300 4600
F 0 "J3" H 3450 4600 50  0000 C CNN
F 1 "Conn_01x01" H 3700 4600 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 3300 4600 50  0001 C CNN
F 3 "~" H 3300 4600 50  0001 C CNN
	1    3300 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5CAB6FCF
P 3300 4700
F 0 "J4" H 3450 4700 50  0000 C CNN
F 1 "Conn_01x01" H 3700 4700 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 3300 4700 50  0001 C CNN
F 3 "~" H 3300 4700 50  0001 C CNN
	1    3300 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5CAB7497
P 3300 4800
F 0 "J5" H 3450 4800 50  0000 C CNN
F 1 "Conn_01x01" H 3700 4800 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 3300 4800 50  0001 C CNN
F 3 "~" H 3300 4800 50  0001 C CNN
	1    3300 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5CAB7728
P 3300 4500
F 0 "J2" H 3450 4500 50  0000 C CNN
F 1 "Conn_01x01" H 3700 4500 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 3300 4500 50  0001 C CNN
F 3 "~" H 3300 4500 50  0001 C CNN
	1    3300 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4800 3600 4800
Wire Wire Line
	3600 4800 3600 4900
$Comp
L power:GND #PWR05
U 1 1 5CABB2ED
P 3600 4900
F 0 "#PWR05" H 3600 4650 50  0001 C CNN
F 1 "GND" H 3604 4721 50  0000 C CNN
F 2 "" H 3600 4900 50  0001 C CNN
F 3 "" H 3600 4900 50  0001 C CNN
	1    3600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4500 3650 4500
Wire Wire Line
	3500 4600 3800 4600
Wire Wire Line
	3500 4700 4000 4700
$Comp
L Device:R_Small R8
U 1 1 5CABDB77
P 3650 4250
F 0 "R8" H 3500 4300 50  0000 L CNN
F 1 "10k" H 3500 4200 40  0000 L CNN
F 2 "local_footprints:0805_HS" H 3650 4250 50  0001 C CNN
F 3 "~" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5CABF4EF
P 3800 4250
F 0 "R9" H 3850 4300 50  0000 L CNN
F 1 "10k" H 3850 4200 40  0000 L CNN
F 2 "local_footprints:0805_HS" H 3800 4250 50  0001 C CNN
F 3 "~" H 3800 4250 50  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4350 3650 4500
Connection ~ 3650 4500
Wire Wire Line
	3650 4500 4000 4500
Wire Wire Line
	3800 4350 3800 4600
Connection ~ 3800 4600
Wire Wire Line
	3800 4600 4000 4600
Wire Wire Line
	3650 4150 3650 4050
Wire Wire Line
	3650 4050 3800 4050
Wire Wire Line
	3800 4050 3800 4150
Wire Wire Line
	3650 4050 3550 4050
Connection ~ 3650 4050
Text GLabel 3550 4050 0    50   Input ~ 0
VPP
Wire Notes Line
	3450 4150 4000 4150
Wire Notes Line
	4000 4150 4000 4350
Wire Notes Line
	4000 4350 3450 4350
Wire Notes Line
	3450 4350 3450 4150
Text Notes 4050 4300 0    50   ~ 0
optional\nI2C pull-ups
Text Notes 3850 4100 0    50   ~ 0
DNP
Text GLabel 6300 4600 2    50   Input ~ 0
UPDI
Text GLabel 6300 4500 2    50   Input ~ 0
VPP
Text GLabel 5200 4600 2    50   Input ~ 0
PA6
Text GLabel 5200 4700 2    50   Input ~ 0
PA7
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5CAD32C8
P 4800 4800
F 0 "J9" H 4950 4800 50  0000 C CNN
F 1 "Conn_01x01" H 5200 4800 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 4800 4800 50  0001 C CNN
F 3 "~" H 4800 4800 50  0001 C CNN
	1    4800 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5CAD4177
P 6000 4500
F 0 "J10" H 6150 4500 50  0000 C CNN
F 1 "Conn_01x01" H 6400 4500 50  0001 C CNN
F 2 "local_footprints:Conn_1-wire" H 6000 4500 50  0001 C CNN
F 3 "~" H 6000 4500 50  0001 C CNN
	1    6000 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 5CAD4B13
P 6000 4600
F 0 "J11" H 6150 4600 50  0000 C CNN
F 1 "Conn_01x01" H 6400 4600 50  0001 C CNN
F 2 "local_footprints:Conn_1-wire" H 6000 4600 50  0001 C CNN
F 3 "~" H 6000 4600 50  0001 C CNN
	1    6000 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5CAD4DCE
P 6000 4700
F 0 "J12" H 6150 4700 50  0000 C CNN
F 1 "Conn_01x01" H 6400 4700 50  0001 C CNN
F 2 "local_footprints:Conn_1-wire" H 6000 4700 50  0001 C CNN
F 3 "~" H 6000 4700 50  0001 C CNN
	1    6000 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 4500 6300 4500
Wire Wire Line
	6200 4600 6300 4600
Wire Wire Line
	6200 4700 6300 4700
Wire Wire Line
	6300 4700 6300 4800
$Comp
L power:GND #PWR011
U 1 1 5CAD8FB2
P 6300 4800
F 0 "#PWR011" H 6300 4550 50  0001 C CNN
F 1 "GND" H 6304 4621 50  0000 C CNN
F 2 "" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
Text GLabel 5200 4500 2    50   Input ~ 0
VPP
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5CAE117F
P 4800 4600
F 0 "J7" H 4950 4600 50  0000 C CNN
F 1 "Conn_01x01" H 5200 4600 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 4800 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4800 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5CAE1189
P 4800 4700
F 0 "J8" H 4950 4700 50  0000 C CNN
F 1 "Conn_01x01" H 5200 4700 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 4800 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5CAE1193
P 4800 4500
F 0 "J6" H 4950 4500 50  0000 C CNN
F 1 "Conn_01x01" H 5200 4500 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 4800 4500 50  0001 C CNN
F 3 "~" H 4800 4500 50  0001 C CNN
	1    4800 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 4800 5100 4800
Wire Wire Line
	5100 4800 5100 4900
$Comp
L power:GND #PWR08
U 1 1 5CAE6890
P 5100 4900
F 0 "#PWR08" H 5100 4650 50  0001 C CNN
F 1 "GND" H 5104 4721 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "" H 5100 4900 50  0001 C CNN
	1    5100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4700 5200 4700
Wire Wire Line
	5000 4600 5200 4600
Wire Wire Line
	5000 4500 5200 4500
$Comp
L local_symbols:MIC9409x U4
U 1 1 5CAF93E9
P 7900 4700
F 0 "U4" H 7850 5173 50  0000 C CNN
F 1 "MIC9409x" H 7850 5080 50  0000 C CNN
F 2 "local_footprints:SOT-363_SC-70-6_HS" H 7700 4700 50  0001 C CNN
F 3 "" H 7700 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
Text GLabel 7200 4500 0    50   Input ~ 0
VPP
Text GLabel 7200 4700 0    50   Input ~ 0
PA6
$Comp
L Device:R_Small R6
U 1 1 5CAFFCE1
P 7300 4900
F 0 "R6" H 7359 4947 50  0000 L CNN
F 1 "100k" H 7359 4854 50  0000 L CNN
F 2 "local_footprints:0805_HS" H 7300 4900 50  0001 C CNN
F 3 "~" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4700 7300 4700
Wire Wire Line
	7300 4700 7300 4800
Connection ~ 7300 4700
Wire Wire Line
	7300 4700 7400 4700
Wire Wire Line
	7300 5000 7300 5100
$Comp
L power:GND #PWR013
U 1 1 5CB0412A
P 7300 5100
F 0 "#PWR013" H 7300 4850 50  0001 C CNN
F 1 "GND" H 7304 4921 50  0000 C CNN
F 2 "" H 7300 5100 50  0001 C CNN
F 3 "" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4500 7400 4500
Wire Wire Line
	7900 4900 7800 4900
Wire Wire Line
	7800 4900 7800 5100
Connection ~ 7800 4900
$Comp
L power:GND #PWR014
U 1 1 5CB07480
P 7800 5100
F 0 "#PWR014" H 7800 4850 50  0001 C CNN
F 1 "GND" H 7804 4921 50  0000 C CNN
F 2 "" H 7800 5100 50  0001 C CNN
F 3 "" H 7800 5100 50  0001 C CNN
	1    7800 5100
	1    0    0    -1  
$EndComp
Text GLabel 8400 4500 2    50   Input ~ 0
VSW
Wire Wire Line
	8300 4500 8400 4500
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 5CB092C8
P 9800 4700
F 0 "J15" H 9950 4700 50  0000 C CNN
F 1 "Conn_01x01" H 10200 4700 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 9800 4700 50  0001 C CNN
F 3 "~" H 9800 4700 50  0001 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 5CB092D2
P 9800 4600
F 0 "J14" H 9950 4600 50  0000 C CNN
F 1 "Conn_01x01" H 10200 4600 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 9800 4600 50  0001 C CNN
F 3 "~" H 9800 4600 50  0001 C CNN
	1    9800 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 5CB092DC
P 9800 4500
F 0 "J13" H 9950 4500 50  0000 C CNN
F 1 "Conn_01x01" H 10200 4500 50  0001 C CNN
F 2 "local_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 9800 4500 50  0001 C CNN
F 3 "~" H 9800 4500 50  0001 C CNN
	1    9800 4500
	1    0    0    -1  
$EndComp
Text GLabel 9100 3900 0    50   Input ~ 0
VSW
Text GLabel 9200 4600 0    50   Input ~ 0
PA7
$Comp
L power:GND #PWR016
U 1 1 5CB0D508
P 9500 4800
F 0 "#PWR016" H 9500 4550 50  0001 C CNN
F 1 "GND" H 9504 4621 50  0000 C CNN
F 2 "" H 9500 4800 50  0001 C CNN
F 3 "" H 9500 4800 50  0001 C CNN
	1    9500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4700 9500 4800
Text Notes 5950 5250 0    50   ~ 0
3 smaller PTHs for\nprogramming
Text Notes 7400 5600 0    50   ~ 0
Load switch,\ncontrolled with PA6
Text Notes 9200 5300 0    50   ~ 0
LED strip with\ndata on PA7
$Comp
L Device:C C5
U 1 1 5CB8DCFC
P 9200 4150
F 0 "C5" H 9300 4150 50  0000 L CNN
F 1 "10uF" H 9250 4050 50  0000 L CNN
F 2 "local_footprints:1210_HS" H 9238 4000 50  0001 C CNN
F 3 "~" H 9200 4150 50  0001 C CNN
	1    9200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5CB9A7CF
P 9400 4600
F 0 "R7" V 9300 4600 50  0000 C CNN
F 1 "1k" V 9400 4600 35  0000 C CNN
F 2 "local_footprints:0805_HS" H 9400 4600 50  0001 C CNN
F 3 "~" H 9400 4600 50  0001 C CNN
	1    9400 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 4600 9600 4600
Wire Wire Line
	9500 4700 9600 4700
Wire Wire Line
	9300 4600 9200 4600
Wire Wire Line
	9100 3900 9200 3900
Wire Wire Line
	9200 3900 9200 4000
Wire Wire Line
	9500 4500 9600 4500
$Comp
L power:GND #PWR0101
U 1 1 5CBBC9A3
P 9200 4300
F 0 "#PWR0101" H 9200 4050 50  0001 C CNN
F 1 "GND" H 9200 4150 50  0000 C CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "" H 9200 4300 50  0001 C CNN
	1    9200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3900 9500 3900
Wire Wire Line
	9500 3900 9500 4500
Connection ~ 9200 3900
$Comp
L local_symbols:JST_PH_BAT JST_PH_BAT1
U 1 1 5CBEFBE8
P 1600 1900
F 0 "JST_PH_BAT1" H 1550 2050 50  0000 C CNN
F 1 "JST_PH_BAT" H 1550 1700 50  0001 C CNN
F 2 "local_footprints:JST_PH_S2B-PH-K_02x2.00mm_Angled_WiderHole" H 1600 1900 50  0001 C CNN
F 3 "~" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
Text Notes 2550 3200 0    50   ~ 0
push-pull
$EndSCHEMATC

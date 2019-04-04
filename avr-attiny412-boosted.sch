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
L local_symbols:attiny412 U?
U 1 1 5CA5A3F1
P 5900 2350
F 0 "U?" H 5900 3023 50  0000 C CNN
F 1 "attiny412" H 5900 2930 50  0000 C CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "" H 6000 2350 50  0001 C CNN
	1    5900 2350
	1    0    0    -1  
$EndComp
$Comp
L local_symbols:MCP1640 U1
U 1 1 5CA5DBC4
P 4100 2000
F 0 "U1" H 4150 2500 50  0000 C CNN
F 1 "MCP1640" H 4250 2400 50  0000 C CNN
F 2 "" H 4100 2000 50  0001 C CNN
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
F 2 "" H 2300 3300 50  0001 C CNN
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
F 2 "" H 3350 2050 50  0001 C CNN
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
F 2 "" H 3350 2350 50  0001 C CNN
F 3 "~" H 3350 2350 50  0001 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CA660DB
P 3350 2500
F 0 "#PWR?" H 3350 2250 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5CA67BCF
P 2300 3600
F 0 "#PWR?" H 2300 3350 50  0001 C CNN
F 1 "GND" H 2304 3421 50  0000 C CNN
F 2 "" H 2300 3600 50  0001 C CNN
F 3 "" H 2300 3600 50  0001 C CNN
	1    2300 3600
	1    0    0    -1  
$EndComp
Text Notes 3100 3400 0    50   ~ 0
Place either:\n  R2 + MIC809: voltage supervisor enabled\n  (useful when using Li-Ion batteries)\nor\n  R1: bypass superviser, boost always on\n  (useful when using non-rechargeable)
$Comp
L power:GND #PWR?
U 1 1 5CA680CD
P 4200 2600
F 0 "#PWR?" H 4200 2350 50  0001 C CNN
F 1 "GND" H 4204 2421 50  0000 C CNN
F 2 "" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5CA68B1C
P 1600 1900
F 0 "J?" H 1750 1900 50  0000 C CNN
F 1 "BAT_JST_PH" H 1900 1800 50  0000 C CNN
F 2 "" H 1600 1900 50  0001 C CNN
F 3 "~" H 1600 1900 50  0001 C CNN
	1    1600 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F?
U 1 1 5CA6AFCA
P 2150 1900
F 0 "F?" V 1917 1900 50  0000 C CNN
F 1 "Polyfuse" V 2010 1900 50  0000 C CNN
F 2 "" H 2200 1700 50  0001 L CNN
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
L power:GND #PWR?
U 1 1 5CA6DD23
P 1900 2100
F 0 "#PWR?" H 1900 1850 50  0001 C CNN
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
L Device:C C?
U 1 1 5CA84421
P 2600 2200
F 0 "C?" H 2400 2250 50  0000 L CNN
F 1 "10uF" H 2300 2150 50  0000 L CNN
F 2 "" H 2638 2050 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5CA86A14
P 2600 2500
F 0 "#PWR?" H 2600 2250 50  0001 C CNN
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
L Device:L L?
U 1 1 5CA87E91
P 3550 1400
F 0 "L?" V 3748 1400 50  0000 C CNN
F 1 "4.7uH" V 3655 1400 50  0000 C CNN
F 2 "" H 3550 1400 50  0001 C CNN
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
$EndSCHEMATC

EESchema Schematic File Version 2  date Wed 10 Oct 2012 09:31:57 SAST
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
LIBS:special
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
LIBS:marula-connector
LIBS:marula-linear
LIBS:marula-buffer
EELAYER 25  0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Marulaprint-ui"
Date "10 oct 2012"
Rev "1"
Comp "Marulaberry Projects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C1
U 1 1 506BEF28
P 1900 1850
F 0 "C1" H 1950 1950 50  0000 L CNN
F 1 "100n" H 1950 1750 50  0000 L CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 506BEF35
P 3650 1850
F 0 "C6" H 3700 1950 50  0000 L CNN
F 1 "100n" H 3700 1750 50  0000 L CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 506BEF3B
P 3950 1850
F 0 "C8" H 4000 1950 50  0000 L CNN
F 1 "100u/10V" H 4000 1750 50  0000 L CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 506BEFAB
P 2700 2400
F 0 "#PWR02" H 2700 2400 30  0001 C CNN
F 1 "GND" H 2700 2330 30  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 506BEFB1
P 1900 2400
F 0 "#PWR03" H 1900 2400 30  0001 C CNN
F 1 "GND" H 1900 2330 30  0001 C CNN
	1    1900 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 506BEFB7
P 3800 2400
F 0 "#PWR04" H 3800 2400 30  0001 C CNN
F 1 "GND" H 3800 2330 30  0001 C CNN
	1    3800 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 506BEFBF
P 4200 1400
F 0 "#PWR05" H 4200 1360 30  0001 C CNN
F 1 "+3.3V" H 4200 1510 30  0000 C CNN
	1    4200 1400
	1    0    0    -1  
$EndComp
$Comp
L MCP1700T-330 U2
U 1 1 506C0739
P 3850 1650
F 0 "U2" H 2450 1850 60  0000 C CNN
F 1 "MCP1700T-330" H 3100 1450 60  0000 C CNN
	1    3850 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 506C088E
P 1550 1400
F 0 "#PWR012" H 1550 1490 20  0001 C CNN
F 1 "+5V" H 1550 1490 30  0000 C CNN
	1    1550 1400
	1    0    0    -1  
$EndComp
Text Notes 2400 1200 0    60   ~ 12
3V3 Power Rail
Text Notes 1000 2750 0    60   ~ 0
250 mA Max Output\nNote: What is max current on SD card
Text Notes 10800 1350 0    60   ~ 12
SD Card Interface
$Comp
L HEF4050B U10
U 1 1 506D2D0F
P 10600 2100
F 0 "U10" H 10450 2650 60  0000 C CNN
F 1 "HEF4050B" H 10650 1600 60  0000 C CNN
	1    10600 2100
	1    0    0    -1  
$EndComp
Text Notes 6400 1000 0    60   ~ 12
Rotary Encoder
$Comp
L CONN_5 P6
U 1 1 506EA6EB
P 6400 1650
F 0 "P6" V 6350 1650 50  0000 C CNN
F 1 "ROTARY" V 6450 1650 50  0000 C CNN
	1    6400 1650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR072
U 1 1 506EA70E
P 6950 1300
F 0 "#PWR072" H 6950 1300 30  0001 C CNN
F 1 "GND" H 6950 1230 30  0001 C CNN
	1    6950 1300
	-1   0    0    1   
$EndComp
Text Label 7400 1650 2    60   ~ 0
ENCODE_1
Text Label 7400 1750 2    60   ~ 0
ENCODE_2
Text Label 7400 1850 2    60   ~ 0
ENCODE_3
Text Notes 6400 2300 0    60   ~ 12
LCD
$Comp
L CONN_11 P7
U 1 1 506EB3A1
P 6200 3150
F 0 "P7" V 6150 3150 60  0000 C CNN
F 1 "LCD" V 6250 3150 60  0000 C CNN
	1    6200 3150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR073
U 1 1 506EB3C4
P 6800 2550
F 0 "#PWR073" H 6800 2550 30  0001 C CNN
F 1 "GND" H 6800 2480 30  0001 C CNN
	1    6800 2550
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR074
U 1 1 506EB3D3
P 7050 2550
F 0 "#PWR074" H 7050 2640 20  0001 C CNN
F 1 "+5V" H 7050 2640 30  0000 C CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
Text Label 7050 2950 2    60   ~ 0
LCD_RS
Text Label 7050 3050 2    60   ~ 0
LCD_E
Text Label 7050 3150 2    60   ~ 0
LCD_D4
Text Label 7050 3250 2    60   ~ 0
LCD_D5
Text Label 7050 3350 2    60   ~ 0
LCD_D6
Text Label 7050 3450 2    60   ~ 0
LCD_D7
Text Label 7050 3550 2    60   ~ 0
LCD_A
Text Label 7050 3650 2    60   ~ 0
LCD_K
$Comp
L POT RV1
U 1 1 506ECE9B
P 7400 2850
F 0 "RV1" H 7400 2750 50  0000 C CNN
F 1 "10K" H 7400 2850 50  0000 C CNN
	1    7400 2850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR075
U 1 1 506ED180
P 7400 3250
F 0 "#PWR075" H 7400 3250 30  0001 C CNN
F 1 "GND" H 7400 3180 30  0001 C CNN
	1    7400 3250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR076
U 1 1 506ED18D
P 7400 2500
F 0 "#PWR076" H 7400 2590 20  0001 C CNN
F 1 "+5V" H 7400 2590 30  0000 C CNN
	1    7400 2500
	1    0    0    -1  
$EndComp
Text Notes 7400 4150 2    60   ~ 0
NOTE: should we add a buzzer
Text Notes 900  10450 0    98   ~ 0
Released under the Creative Commons Attribution Share-Alike 3.0 License\nhttp://creativecommons.org/licenses/by-sa/3.0\n\nCopyright Guy van den Berg 2012\nhttp://www.marulaberry.co.za
$Comp
L SD/MMC U11
U 1 1 5070CA67
P 12450 2450
F 0 "U11" H 12300 3150 60  0000 C CNN
F 1 "SD/MMC" H 12400 1850 60  0000 C CNN
	1    12450 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0143
U 1 1 5070CA76
P 11750 3100
F 0 "#PWR0143" H 11750 3100 30  0001 C CNN
F 1 "GND" H 11750 3030 30  0001 C CNN
	1    11750 3100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR0144
U 1 1 5070D381
P 11550 3000
F 0 "#PWR0144" H 11550 3100 40  0001 C CNN
F 1 "3V3" H 11550 3125 40  0000 C CNN
	1    11550 3000
	-1   0    0    1   
$EndComp
NoConn ~ 11900 2300
NoConn ~ 11900 2400
$Comp
L GND #PWR0145
U 1 1 5070D96E
P 10000 1600
F 0 "#PWR0145" H 10000 1600 30  0001 C CNN
F 1 "GND" H 10000 1530 30  0001 C CNN
	1    10000 1600
	-1   0    0    1   
$EndComp
$Comp
L 3V3 #PWR0146
U 1 1 5070D991
P 9800 1650
F 0 "#PWR0146" H 9800 1750 40  0001 C CNN
F 1 "3V3" H 9800 1775 40  0000 C CNN
	1    9800 1650
	1    0    0    -1  
$EndComp
NoConn ~ 11150 2250
NoConn ~ 11150 2350
NoConn ~ 11150 2450
Text Label 11450 1850 0    60   ~ 0
MISO
$Comp
L 3V3 #PWR0147
U 1 1 507077F1
P 9800 2600
F 0 "#PWR0147" H 9800 2700 40  0001 C CNN
F 1 "3V3" H 9800 2725 40  0000 C CNN
	1    9800 2600
	-1   0    0    1   
$EndComp
Text Label 9800 1950 0    60   ~ 0
MOSI
Text Label 9800 2050 0    60   ~ 0
SCK
Text Label 9800 2150 0    60   ~ 0
SD_CS
Text Notes 10000 2850 0    60   ~ 0
NOTE: can unused pins \nbe left floating or should\nbe tied?
Text Notes 2600 1350 0    60   ~ 0
Optional
Text Notes 6600 1100 0    60   ~ 0
Optional
Text Notes 6300 2400 0    60   ~ 0
Optional
Text Notes 11050 1450 0    60   ~ 0
Optional
Wire Wire Line
	1550 1550 2100 1550
Wire Wire Line
	3300 1550 4200 1550
Wire Wire Line
	3650 1650 3650 1550
Connection ~ 3650 1550
Wire Wire Line
	3950 1650 3950 1550
Connection ~ 3950 1550
Wire Wire Line
	3650 2050 3650 2150
Wire Wire Line
	3650 2150 3950 2150
Wire Wire Line
	3950 2150 3950 2050
Wire Wire Line
	3800 2150 3800 2400
Connection ~ 3800 2150
Wire Wire Line
	2700 2050 2700 2400
Wire Wire Line
	1900 2050 1900 2400
Wire Wire Line
	1900 1650 1900 1550
Connection ~ 1900 1550
Wire Wire Line
	4200 1550 4200 1400
Wire Wire Line
	1550 1550 1550 1400
Wire Wire Line
	6950 1300 6950 1550
Wire Wire Line
	6950 1550 6800 1550
Wire Wire Line
	6800 1450 6950 1450
Connection ~ 6950 1450
Wire Wire Line
	6800 1650 7400 1650
Wire Wire Line
	6800 1750 7400 1750
Wire Wire Line
	6800 1850 7400 1850
Wire Wire Line
	6800 2550 6800 2650
Wire Wire Line
	6800 2650 6550 2650
Wire Wire Line
	6550 2750 7050 2750
Wire Wire Line
	7050 2750 7050 2550
Wire Wire Line
	6550 2950 7050 2950
Wire Wire Line
	6550 3050 7050 3050
Wire Wire Line
	6550 3150 7050 3150
Wire Wire Line
	6550 3250 7050 3250
Wire Wire Line
	6550 3350 7050 3350
Wire Wire Line
	6550 3450 7050 3450
Wire Wire Line
	6550 3550 7050 3550
Wire Wire Line
	6550 3650 7050 3650
Wire Wire Line
	6550 2850 7250 2850
Wire Wire Line
	7400 2500 7400 2600
Wire Wire Line
	7400 3250 7400 3100
Wire Wire Line
	11900 2700 11750 2700
Wire Wire Line
	11750 2700 11750 3100
Wire Wire Line
	11900 2800 11750 2800
Connection ~ 11750 2800
Wire Wire Line
	11900 2900 11750 2900
Connection ~ 11750 2900
Wire Wire Line
	11550 3000 11550 2550
Wire Wire Line
	11550 2550 11900 2550
Wire Wire Line
	10100 1700 10000 1700
Wire Wire Line
	10000 1700 10000 1600
Wire Wire Line
	9800 1650 9800 1800
Wire Wire Line
	9800 1800 10100 1800
Wire Wire Line
	11150 1950 11900 1950
Wire Wire Line
	11150 2050 11900 2050
Wire Wire Line
	11150 2150 11900 2150
Wire Wire Line
	11900 1850 11450 1850
Wire Wire Line
	10100 1950 9800 1950
Wire Wire Line
	10100 2050 9800 2050
Wire Wire Line
	10100 2150 9800 2150
Wire Wire Line
	10100 2250 9800 2250
Wire Wire Line
	9800 2250 9800 2600
Wire Wire Line
	10100 2350 9800 2350
Connection ~ 9800 2350
Wire Wire Line
	10100 2450 9800 2450
Connection ~ 9800 2450
$EndSCHEMATC

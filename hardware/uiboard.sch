EESchema Schematic File Version 2  date Fri 12 Oct 2012 12:46:43 SAST
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
LIBS:marula-port-expander
LIBS:marula-lcd
LIBS:uiboard-cache
EELAYER 25  0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Marulaprint-ui"
Date "12 oct 2012"
Rev "1"
Comp "Marulaberry Projects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C?
U 1 1 506BEF28
P 1150 1750
F 0 "C?" H 1200 1850 50  0000 L CNN
F 1 "100n" H 1200 1650 50  0000 L CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 506BEF35
P 2900 1750
F 0 "C?" H 2950 1850 50  0000 L CNN
F 1 "100n" H 2950 1650 50  0000 L CNN
	1    2900 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 506BEF3B
P 3200 1750
F 0 "C?" H 3250 1850 50  0000 L CNN
F 1 "100u/10V" H 3250 1650 50  0000 L CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 506BEFAB
P 1950 2300
F 0 "#PWR?" H 1950 2300 30  0001 C CNN
F 1 "GND" H 1950 2230 30  0001 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 506BEFB1
P 1150 2300
F 0 "#PWR?" H 1150 2300 30  0001 C CNN
F 1 "GND" H 1150 2230 30  0001 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 506BEFB7
P 3050 2300
F 0 "#PWR?" H 3050 2300 30  0001 C CNN
F 1 "GND" H 3050 2230 30  0001 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 506BEFBF
P 3450 1300
F 0 "#PWR?" H 3450 1260 30  0001 C CNN
F 1 "+3.3V" H 3450 1410 30  0000 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
$Comp
L MCP1700T-330 U?
U 1 1 506C0739
P 3100 1550
F 0 "U?" H 1700 1750 60  0000 C CNN
F 1 "MCP1700T-330" H 2350 1350 60  0000 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 506C088E
P 800 1300
F 0 "#PWR?" H 800 1390 20  0001 C CNN
F 1 "+5V" H 800 1390 30  0000 C CNN
	1    800  1300
	1    0    0    -1  
$EndComp
Text Notes 1650 750  0    60   ~ 12
3V3 Power Rail
Text Notes 1200 2650 0    60   ~ 0
250 mA Max Output\nNote: What is max current on SD card
Text Notes 1850 3500 0    60   ~ 12
SD Card Interface
$Comp
L HEF4050B U?
U 1 1 506D2D0F
P 1650 4150
F 0 "U?" H 1500 4700 60  0000 C CNN
F 1 "HEF4050B" H 1700 3650 60  0000 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
Text Label 7050 4200 2    60   ~ 0
ENCODE_1
Text Label 7050 4300 2    60   ~ 0
ENCODE_2
Text Notes 1950 7650 2    60   ~ 0
NOTE: should we add a buzzer
Text Notes 900  10450 0    98   ~ 0
Released under the Creative Commons Attribution Share-Alike 3.0 License\nhttp://creativecommons.org/licenses/by-sa/3.0\n\nCopyright Guy van den Berg 2012\nhttp://www.marulaberry.co.za
$Comp
L SD/MMC U?
U 1 1 5070CA67
P 3500 4500
F 0 "U?" H 3350 5200 60  0000 C CNN
F 1 "SD/MMC" H 3450 3900 60  0000 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5070CA76
P 2800 5150
F 0 "#PWR?" H 2800 5150 30  0001 C CNN
F 1 "GND" H 2800 5080 30  0001 C CNN
	1    2800 5150
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5070D381
P 2600 5050
F 0 "#PWR?" H 2600 5150 40  0001 C CNN
F 1 "3V3" H 2600 5175 40  0000 C CNN
	1    2600 5050
	-1   0    0    1   
$EndComp
NoConn ~ 2950 4350
NoConn ~ 2950 4450
$Comp
L GND #PWR?
U 1 1 5070D96E
P 1050 3650
F 0 "#PWR?" H 1050 3650 30  0001 C CNN
F 1 "GND" H 1050 3580 30  0001 C CNN
	1    1050 3650
	-1   0    0    1   
$EndComp
$Comp
L 3V3 #PWR?
U 1 1 5070D991
P 850 3700
F 0 "#PWR?" H 850 3800 40  0001 C CNN
F 1 "3V3" H 850 3825 40  0000 C CNN
	1    850  3700
	1    0    0    -1  
$EndComp
NoConn ~ 2200 4300
NoConn ~ 2200 4400
NoConn ~ 2200 4500
Text Label 2500 3900 0    60   ~ 0
MISO
$Comp
L 3V3 #PWR?
U 1 1 507077F1
P 850 4650
F 0 "#PWR?" H 850 4750 40  0001 C CNN
F 1 "3V3" H 850 4775 40  0000 C CNN
	1    850  4650
	-1   0    0    1   
$EndComp
Text Label 850  4000 0    60   ~ 0
MOSI
Text Label 850  4100 0    60   ~ 0
SCK
Text Label 850  4200 0    60   ~ 0
SD_CS
Text Notes 1050 4900 0    60   ~ 0
NOTE: can unused pins \nbe left floating or should\nbe tied?
Wire Wire Line
	800  1450 1350 1450
Wire Wire Line
	2550 1450 3450 1450
Wire Wire Line
	2900 1550 2900 1450
Connection ~ 2900 1450
Wire Wire Line
	3200 1550 3200 1450
Connection ~ 3200 1450
Wire Wire Line
	2900 1950 2900 2050
Wire Wire Line
	2900 2050 3200 2050
Wire Wire Line
	3200 2050 3200 1950
Wire Wire Line
	3050 2050 3050 2300
Connection ~ 3050 2050
Wire Wire Line
	1950 1950 1950 2300
Wire Wire Line
	1150 1950 1150 2300
Wire Wire Line
	1150 1550 1150 1450
Connection ~ 1150 1450
Wire Wire Line
	3450 1450 3450 1300
Wire Wire Line
	800  1450 800  1300
Wire Wire Line
	6450 4200 7050 4200
Wire Wire Line
	6450 4300 7050 4300
Wire Wire Line
	2950 4750 2800 4750
Wire Wire Line
	2800 4750 2800 5150
Wire Wire Line
	2950 4850 2800 4850
Connection ~ 2800 4850
Wire Wire Line
	2950 4950 2800 4950
Connection ~ 2800 4950
Wire Wire Line
	2600 5050 2600 4600
Wire Wire Line
	2600 4600 2950 4600
Wire Wire Line
	1150 3750 1050 3750
Wire Wire Line
	1050 3750 1050 3650
Wire Wire Line
	850  3700 850  3850
Wire Wire Line
	850  3850 1150 3850
Wire Wire Line
	2200 4000 2950 4000
Wire Wire Line
	2200 4100 2950 4100
Wire Wire Line
	2200 4200 2950 4200
Wire Wire Line
	2950 3900 2500 3900
Wire Wire Line
	1150 4000 850  4000
Wire Wire Line
	1150 4100 850  4100
Wire Wire Line
	1150 4200 850  4200
Wire Wire Line
	1150 4300 850  4300
Wire Wire Line
	850  4300 850  4650
Wire Wire Line
	1150 4400 850  4400
Connection ~ 850  4400
Wire Wire Line
	1150 4500 850  4500
Connection ~ 850  4500
$Comp
L PCF8574-PW U?
U 1 1 5076BF3D
P 8800 4600
F 0 "U?" H 8150 5650 60  0000 C CNN
F 1 "PCF8574-PW" H 8700 4400 60  0000 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
$Comp
L PCF8574-PW U?
U 1 1 5076BF4A
P 8250 2250
F 0 "U?" H 7600 3300 60  0000 C CNN
F 1 "PCF8574-PW" H 8150 2050 60  0000 C CNN
	1    8250 2250
	1    0    0    -1  
$EndComp
$Comp
L IDC-10-WAY P?
U 1 1 5077EB75
P 5400 1700
F 0 "P?" H 5400 1950 30  0000 C CNN
F 1 "DRIVER" H 5400 1350 30  0000 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1550 5250 1550
Wire Wire Line
	5550 1550 5850 1550
Wire Wire Line
	5250 1650 4950 1650
Wire Wire Line
	5550 1650 5850 1650
Wire Wire Line
	5250 1750 4950 1750
Wire Wire Line
	5250 1850 4950 1850
Wire Wire Line
	5550 1750 5850 1750
Wire Wire Line
	5550 1850 5850 1850
Wire Wire Line
	5550 1950 5850 1950
Wire Wire Line
	5250 1950 4950 1950
Text Label 4950 1650 0    60   ~ 0
SDSS
Text Label 4950 1750 0    60   ~ 0
SW1
Text Label 4950 1850 0    60   ~ 0
SW2
Text Label 5850 1950 2    60   ~ 0
MOSI
Text Label 5850 1850 2    60   ~ 0
MISO
Text Label 5850 1750 2    60   ~ 0
SCK
Text Label 5850 1650 2    60   ~ 0
SDA
Text Label 5850 1550 2    60   ~ 0
SCL
$Comp
L LCD-4X20 U?
U 1 1 5077EF08
P 10750 1700
F 0 "U?" H 10550 2500 60  0000 C CNN
F 1 "LCD-4X20" V 10850 1650 60  0000 C CNN
	1    10750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1600 8900 1600
Wire Wire Line
	8550 1700 8900 1700
Wire Wire Line
	8550 1800 8900 1800
Wire Wire Line
	8550 1900 8900 1900
Wire Wire Line
	8550 2000 8900 2000
Wire Wire Line
	8550 2100 8900 2100
Wire Wire Line
	8550 2200 8900 2200
Text Label 8900 1600 2    60   ~ 0
LCD_D7
NoConn ~ 8550 1500
Text Label 8900 1700 2    60   ~ 0
LCD_D6
Text Label 8900 1800 2    60   ~ 0
LCD_D5
Text Label 8900 1900 2    60   ~ 0
LCD_D4
NoConn ~ 10200 1900
NoConn ~ 10200 1800
NoConn ~ 10200 1700
NoConn ~ 10200 1600
Text Label 8900 2000 2    60   ~ 0
LCD_E
Text Label 8900 2100 2    60   ~ 0
LCD_RW
Text Label 8900 2200 2    60   ~ 0
LCD_RS
$Comp
L +5V #PWR?
U 1 1 5077F085
P 7800 2750
F 0 "#PWR?" H 7800 2840 20  0001 C CNN
F 1 "+5V" H 7800 2840 30  0000 C CNN
	1    7800 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5077F0C6
P 7550 2750
F 0 "#PWR?" H 7550 2750 30  0001 C CNN
F 1 "GND" H 7550 2680 30  0001 C CNN
	1    7550 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 2650 7650 2750
Wire Wire Line
	7650 2750 7550 2750
Wire Wire Line
	7750 2650 7750 2750
Wire Wire Line
	7750 2750 7800 2750
Wire Wire Line
	7250 1600 6950 1600
Wire Wire Line
	7250 1700 6950 1700
Text Label 6950 1600 0    60   ~ 0
SCL
Text Label 6950 1700 0    60   ~ 0
SDA
NoConn ~ 7250 1500
$Comp
L GND #PWR?
U 1 1 5077F458
P 7100 2300
F 0 "#PWR?" H 7100 2300 30  0001 C CNN
F 1 "GND" H 7100 2230 30  0001 C CNN
	1    7100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1850 7100 2300
Wire Wire Line
	7100 1850 7250 1850
Wire Wire Line
	7250 1950 7100 1950
Connection ~ 7100 1950
Wire Wire Line
	7250 2050 7100 2050
Connection ~ 7100 2050
$Comp
L GND #PWR?
U 1 1 5077F575
P 9850 700
F 0 "#PWR?" H 9850 700 30  0001 C CNN
F 1 "GND" H 9850 630 30  0001 C CNN
	1    9850 700 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9850 700  9850 1000
Wire Wire Line
	9850 1000 10200 1000
$Comp
L +5V #PWR?
U 1 1 5077F5E1
P 9700 750
F 0 "#PWR?" H 9700 840 20  0001 C CNN
F 1 "+5V" H 9700 840 30  0000 C CNN
	1    9700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1100 10200 1100
Wire Wire Line
	9700 750  9700 1100
$Comp
L POT RV?
U 1 1 5077F66A
P 9500 1200
F 0 "RV?" H 9500 1100 50  0000 C CNN
F 1 "POT" H 9500 1200 50  0000 C CNN
	1    9500 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1200 9650 1200
Wire Wire Line
	9500 950  9500 850 
Wire Wire Line
	9500 850  9700 850 
Connection ~ 9700 850 
$Comp
L GND #PWR?
U 1 1 5077F767
P 9500 1600
F 0 "#PWR?" H 9500 1600 30  0001 C CNN
F 1 "GND" H 9500 1530 30  0001 C CNN
	1    9500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1450 9500 1600
Wire Wire Line
	10200 1300 9800 1300
Wire Wire Line
	10200 1400 9800 1400
Wire Wire Line
	10200 1500 9800 1500
Text Label 9800 1300 0    60   ~ 0
LCD_RS
Text Label 9800 1400 0    60   ~ 0
LCD_RW
Text Label 9800 1500 0    60   ~ 0
LCD_E
Wire Wire Line
	10200 2000 9800 2000
Wire Wire Line
	10200 2100 9800 2100
Wire Wire Line
	10200 2200 9800 2200
Wire Wire Line
	10200 2300 9800 2300
Text Label 9800 2000 0    60   ~ 0
LCD_D4
Text Label 9800 2100 0    60   ~ 0
LCD_D5
Text Label 9800 2200 0    60   ~ 0
LCD_D6
Text Label 9800 2300 0    60   ~ 0
LCD_D7
$Comp
L R R?
U 1 1 5077FAC8
P 10000 2700
F 0 "R?" V 10080 2700 50  0000 C CNN
F 1 "R" V 10000 2700 50  0000 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2400 10000 2400
Wire Wire Line
	10000 2400 10000 2450
$Comp
L GND #PWR?
U 1 1 5077FB43
P 10150 3050
F 0 "#PWR?" H 10150 3050 30  0001 C CNN
F 1 "GND" H 10150 2980 30  0001 C CNN
	1    10150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2950 10000 3000
Wire Wire Line
	10000 3000 10150 3000
Wire Wire Line
	10200 2500 10150 2500
Wire Wire Line
	10150 2500 10150 3050
Connection ~ 10150 3000
Text Notes 8200 650  0    60   ~ 12
LCD
Wire Notes Line
	3900 500  3900 3200
Text Notes 4750 750  0    60   ~ 12
Driver Connector
$Comp
L +5V #PWR?
U 1 1 5077F720
P 4950 1250
F 0 "#PWR?" H 4950 1340 20  0001 C CNN
F 1 "+5V" H 4950 1340 30  0000 C CNN
	1    4950 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5077F72F
P 4950 2350
F 0 "#PWR?" H 4950 2350 30  0001 C CNN
F 1 "GND" H 4950 2280 30  0001 C CNN
	1    4950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1250 4950 1550
Wire Wire Line
	4950 1950 4950 2350
$Comp
L PWR_FLAG #FLG?
U 1 1 5077F80F
P 4600 2150
F 0 "#FLG?" H 4600 2420 30  0001 C CNN
F 1 "PWR_FLAG" H 4600 2380 30  0000 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5077F81C
P 4600 1400
F 0 "#FLG?" H 4600 1670 30  0001 C CNN
F 1 "PWR_FLAG" H 4600 1630 30  0000 C CNN
	1    4600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1400 4600 1450
Wire Wire Line
	4600 1450 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	4600 2150 4600 2200
Wire Wire Line
	4600 2200 4950 2200
Connection ~ 4950 2200
Wire Notes Line
	600  3200 11100 3200
Wire Notes Line
	6300 3200 6300 550 
Wire Notes Line
	500  5400 11100 5400
Wire Notes Line
	4100 3200 4100 5400
Text Notes 6350 3450 0    60   ~ 12
Rotary Encoder
$EndSCHEMATC

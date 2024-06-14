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
L Timer_RTC:DS3231MZ U?
U 1 1 666C80E2
P 4900 1750
F 0 "U?" H 4900 1261 50  0001 C CNN
F 1 "DS3231MZ" H 5150 2150 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4900 1250 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231M.pdf" H 4900 1150 50  0001 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:MAX7219 U?
U 1 1 666C8A10
P 6100 3000
F 0 "U?" H 6100 4181 50  0001 C CNN
F 1 "MAX7219" H 6350 4000 50  0000 C CNN
F 2 "" H 6050 3050 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX7219-MAX7221.pdf" H 6150 2850 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 666CD6C9
P 4000 2600
F 0 "BZ?" H 4152 2629 50  0001 L CNN
F 1 "Buzzer" H 4152 2583 50  0000 L CNN
F 2 "" V 3975 2700 50  0001 C CNN
F 3 "~" V 3975 2700 50  0001 C CNN
	1    4000 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R 2M2
U 1 1 666CDBD4
P 3600 2600
F 0 "2M2" H 3670 2646 50  0000 L CNN
F 1 "R" H 3670 2555 50  0000 L CNN
F 2 "" V 3530 2600 50  0001 C CNN
F 3 "~" H 3600 2600 50  0001 C CNN
	1    3600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 666CF712
P 2150 850
F 0 "#PWR?" H 2150 700 50  0001 C CNN
F 1 "+5V" H 2165 1023 50  0000 C CNN
F 2 "" H 2150 850 50  0001 C CNN
F 3 "" H 2150 850 50  0001 C CNN
	1    2150 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 666CFCC5
P 1500 5050
F 0 "#PWR?" H 1500 4800 50  0001 C CNN
F 1 "GND" H 1505 4877 50  0000 C CNN
F 2 "" H 1500 5050 50  0001 C CNN
F 3 "" H 1500 5050 50  0001 C CNN
	1    1500 5050
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM8:STM8S208RB U?
U 1 1 666C6336
P 2500 3050
F 0 "U?" H 2500 5031 50  0001 C CNN
F 1 "STM8S208RB" H 2500 5100 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 2550 850 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stm8s208rb.pdf" H 2400 3050 50  0001 C CNN
	1    2500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1250 2150 1250
Wire Wire Line
	2150 1250 2150 1050
Wire Wire Line
	4900 1350 4900 1050
Connection ~ 2150 1050
Wire Wire Line
	2150 1050 2150 850 
Wire Wire Line
	4900 2150 4900 5050
Wire Wire Line
	4400 1550 4400 1100
Wire Wire Line
	4400 1100 1550 1100
Wire Wire Line
	1550 1100 1550 2450
Wire Wire Line
	1550 2450 1900 2450
Wire Wire Line
	4400 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1150
Wire Wire Line
	4350 1150 1600 1150
Wire Wire Line
	1600 1150 1600 2350
Wire Wire Line
	1600 2350 1900 2350
Wire Wire Line
	3900 2500 3900 2400
Wire Wire Line
	3900 2400 3750 2400
Wire Wire Line
	3600 2400 3600 2450
Wire Wire Line
	3900 2700 3900 2850
Wire Wire Line
	3900 2850 3750 2850
Wire Wire Line
	3600 2850 3600 2750
Wire Wire Line
	3100 1850 3750 1850
Wire Wire Line
	3750 1850 3750 2400
Connection ~ 3750 2400
Wire Wire Line
	3750 2400 3600 2400
Wire Wire Line
	3750 2850 3750 5050
Connection ~ 3750 2850
Wire Wire Line
	3750 2850 3600 2850
Connection ~ 3750 5050
Wire Wire Line
	3750 5050 1500 5050
Wire Wire Line
	6100 4000 6100 5050
Wire Wire Line
	3750 5050 4900 5050
Connection ~ 4900 5050
Wire Wire Line
	4900 5050 6100 5050
Wire Wire Line
	6100 2000 6100 1050
Wire Wire Line
	2150 1050 4900 1050
Connection ~ 4900 1050
Wire Wire Line
	4900 1050 6100 1050
Wire Wire Line
	5700 3700 5400 3700
Wire Wire Line
	5400 3700 5400 4650
Wire Wire Line
	5400 4650 3100 4650
Wire Wire Line
	5700 3800 5450 3800
Wire Wire Line
	5450 3800 5450 4350
Wire Wire Line
	5450 4350 3100 4350
Wire Wire Line
	5700 3600 5350 3600
Wire Wire Line
	5350 3600 5350 4450
Wire Wire Line
	5350 4450 3100 4450
$EndSCHEMATC

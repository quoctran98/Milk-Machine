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
L MCU_Module:Arduino_Nano_v2.x Arduino
U 1 1 611D24C4
P 6200 4750
F 0 "Arduino" H 6200 3661 50  0000 C CNN
F 1 "Nano" H 6200 3570 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6200 4750 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6200 4750 50  0001 C CNN
	1    6200 4750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E BTN
U 1 1 611D9011
P 5350 6900
F 0 "BTN" H 5350 7285 50  0000 C CNN
F 1 "UP" H 5350 7194 50  0000 C CNN
F 2 "" H 5350 7200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 5350 7200 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E BTN
U 1 1 611DA0F0
P 5350 6550
F 0 "BTN" H 5350 6935 50  0000 C CNN
F 1 "MILK" H 5350 6844 50  0000 C CNN
F 2 "" H 5350 6850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 5350 6850 50  0001 C CNN
	1    5350 6550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E BTN
U 1 1 611DA8C9
P 5350 6200
F 0 "BTN" H 5350 6585 50  0000 C CNN
F 1 "DOWN" H 5350 6494 50  0000 C CNN
F 2 "" H 5350 6500 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 5350 6500 50  0001 C CNN
	1    5350 6200
	1    0    0    -1  
$EndComp
$Comp
L Relay:EC2-3TNU RELAY
U 1 1 611E160B
P 7700 3050
F 0 "RELAY" H 8530 3096 50  0000 L CNN
F 1 "2 COIL" H 8530 3005 50  0000 L CNN
F 2 "Relay_THT:Relay_DPDT_Kemet_EC2_DoubleCoil" H 7500 3050 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_R7002_EC2_EE2.pdf" H 7500 3050 50  0001 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611E3F98
P 5400 3400
F 0 "#PWR?" H 5400 3150 50  0001 C CNN
F 1 "GND" H 5405 3227 50  0000 C CNN
F 2 "" H 5400 3400 50  0001 C CNN
F 3 "" H 5400 3400 50  0001 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LM2594HVM-5.0 BUCK
U 1 1 611E48F4
P 6150 3050
F 0 "BUCK" H 6150 3417 50  0000 C CNN
F 1 "LM2596" H 6150 3326 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 2800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2594.pdf" H 6150 3150 50  0001 C CNN
	1    6150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 611E3747
P 5400 2950
F 0 "#PWR?" H 5400 2800 50  0001 C CNN
F 1 "+12V" H 5415 3123 50  0000 C CNN
F 2 "" H 5400 2950 50  0001 C CNN
F 3 "" H 5400 2950 50  0001 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3350 6350 3400
Wire Wire Line
	6350 3400 5400 3400
Wire Wire Line
	5400 2950 5750 2950
Wire Wire Line
	6100 3750 6100 3500
Wire Wire Line
	6100 3500 6550 3500
Wire Wire Line
	6550 3500 6550 3050
Wire Wire Line
	6200 5750 5400 5750
Connection ~ 5400 3400
Connection ~ 5400 2950
Wire Wire Line
	8000 2550 8000 2750
Wire Wire Line
	7100 2750 6750 2750
Wire Wire Line
	6750 2750 6750 3400
Wire Wire Line
	8300 2750 8300 2650
Wire Wire Line
	8300 2650 6750 2650
Wire Wire Line
	6750 2650 6750 2750
Connection ~ 6750 2750
Wire Wire Line
	5650 3700 7900 3700
Wire Wire Line
	7900 3700 7900 3350
Wire Wire Line
	7500 3650 7500 3350
Wire Wire Line
	7500 3650 5600 3650
Wire Wire Line
	5600 6450 5550 6450
Wire Wire Line
	5550 6800 5650 6800
$Comp
L Device:R_US R1
U 1 1 61228FC0
P 5700 6100
F 0 "R1" V 5495 6100 50  0000 C CNN
F 1 "10K" V 5586 6100 50  0000 C CNN
F 2 "" V 5740 6090 50  0001 C CNN
F 3 "~" H 5700 6100 50  0001 C CNN
	1    5700 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 6122AB16
P 5750 6450
F 0 "R2" V 5545 6450 50  0000 C CNN
F 1 "10K" V 5636 6450 50  0000 C CNN
F 2 "" V 5790 6440 50  0001 C CNN
F 3 "~" H 5750 6450 50  0001 C CNN
	1    5750 6450
	0    1    1    0   
$EndComp
Connection ~ 5600 6450
$Comp
L Device:R_US R3
U 1 1 6122B3BD
P 5800 6800
F 0 "R3" V 5595 6800 50  0000 C CNN
F 1 "10K" V 5686 6800 50  0000 C CNN
F 2 "" V 5840 6790 50  0001 C CNN
F 3 "~" H 5800 6800 50  0001 C CNN
	1    5800 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 6100 6300 6100
Wire Wire Line
	6300 6100 6300 5800
Wire Wire Line
	6300 6100 6300 6450
Wire Wire Line
	6300 6450 5900 6450
Connection ~ 6300 6100
Wire Wire Line
	6300 6450 6300 6800
Wire Wire Line
	6300 6800 5950 6800
Connection ~ 6300 6450
Wire Wire Line
	5150 6800 5100 6800
Wire Wire Line
	5100 6800 5100 6450
Wire Wire Line
	5100 6450 5150 6450
Wire Wire Line
	5100 6450 5100 6100
Wire Wire Line
	5100 6100 5150 6100
Connection ~ 5100 6450
Wire Wire Line
	5100 6100 5100 5550
Wire Wire Line
	5100 3600 6400 3600
Wire Wire Line
	6400 3600 6400 3750
Connection ~ 5100 6100
$Comp
L Display_Character:RC1602A LCD
U 1 1 611D4D8B
P 4250 4850
F 0 "LCD" H 4250 3969 50  0000 C CNN
F 1 "1602A" H 4250 4060 50  0000 C CNN
F 2 "Display:RC1602A" H 4350 4050 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 4350 4750 50  0001 C CNN
	1    4250 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 4350 5700 4350
Wire Wire Line
	5700 5150 5650 5150
Connection ~ 5650 6800
Wire Wire Line
	5600 5050 5700 5050
Wire Wire Line
	5600 5050 5600 6450
Wire Wire Line
	5700 4950 5550 4950
Wire Wire Line
	5550 4950 5550 6100
Connection ~ 5550 6100
Wire Wire Line
	5700 4850 5650 4850
Wire Wire Line
	5650 4850 5650 3700
Wire Wire Line
	5600 4750 5700 4750
Wire Wire Line
	5600 4750 5600 3650
Wire Wire Line
	4650 4450 5700 4450
Wire Wire Line
	5700 4550 4650 4550
Wire Wire Line
	5700 4650 4650 4650
Wire Wire Line
	4650 5150 5500 5150
Wire Wire Line
	5500 5150 5500 5250
Wire Wire Line
	5500 5250 5700 5250
Wire Wire Line
	5650 5150 5650 6800
Wire Wire Line
	4650 5350 5700 5350
Wire Wire Line
	3850 4550 3850 3550
Wire Wire Line
	3850 3550 6300 3550
Wire Wire Line
	6300 3550 6300 3750
Connection ~ 6350 3400
Wire Wire Line
	6350 3400 6750 3400
Wire Wire Line
	4250 4150 4700 4150
Wire Wire Line
	4700 5800 6300 5800
Wire Wire Line
	4700 4150 4700 5250
Connection ~ 6300 5800
Wire Wire Line
	6300 5800 6300 5750
Wire Wire Line
	5400 3400 5400 5750
Wire Wire Line
	3850 5050 3850 5800
Wire Wire Line
	3850 5800 4700 5800
Connection ~ 4700 5800
Wire Wire Line
	4650 5250 4700 5250
Connection ~ 4700 5250
Wire Wire Line
	4700 5250 4700 5800
Wire Wire Line
	3850 4650 3850 5050
Connection ~ 3850 5050
Wire Wire Line
	4250 5550 5100 5550
Connection ~ 5100 5550
Wire Wire Line
	5100 5550 5100 3600
Wire Wire Line
	7600 2550 7600 2750
Wire Wire Line
	5400 1900 8000 1900
Wire Wire Line
	8000 1900 8000 2050
Wire Wire Line
	7600 2000 7600 2050
Wire Wire Line
	5400 2000 5400 2950
Wire Wire Line
	5400 1900 5400 2000
Connection ~ 5400 2000
Wire Wire Line
	5400 2000 7600 2000
$Comp
L Motor:Motor_DC PUMP
U 1 1 611DB919
P 7600 2250
F 0 "PUMP" H 7758 2246 50  0000 L CNN
F 1 "SKIM" H 7758 2155 50  0000 L CNN
F 2 "" H 7600 2160 50  0001 C CNN
F 3 "~" H 7600 2160 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC PUMP
U 1 1 611DC1EB
P 8000 2250
F 0 "PUMP" H 8158 2246 50  0000 L CNN
F 1 "CREAM" H 8158 2155 50  0000 L CNN
F 2 "" H 8000 2160 50  0001 C CNN
F 3 "~" H 8000 2160 50  0001 C CNN
	1    8000 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC

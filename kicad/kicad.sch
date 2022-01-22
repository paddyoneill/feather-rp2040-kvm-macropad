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
L Feather_RP2040_Macropad:Adafruit_Feather_RP2040 U1
U 1 1 61EC5E80
P 5050 3700
F 0 "U1" H 5050 4715 50  0000 C CNN
F 1 "Adafruit_Feather_RP2040" H 5050 4624 50  0000 C CNN
F 2 "" H 5050 2850 50  0001 C CNN
F 3 "https://cdn-learn.adafruit.com/downloads/pdf/adafruit-feather-rp2040-pico.pdf" H 5050 2850 50  0001 C CNN
	1    5050 3700
	1    0    0    -1  
$EndComp
$Comp
L Feather_RP2040_Macropad:Kailh_Speed_Gold SW1
U 1 1 61EC6611
P 6450 3000
F 0 "SW1" H 6445 3285 50  0000 C CNN
F 1 "Kailh_Speed_Gold" H 6445 3194 50  0000 C CNN
F 2 "" H 6450 2930 50  0001 C CNN
F 3 "https://github.com/keyboardio/keyswitch_documentation/blob/master/datasheets/Kailh/CPG151101D211-Speed-Gold.pdf" H 6450 2930 50  0001 C CNN
	1    6450 3000
	1    0    0    -1  
$EndComp
$Comp
L Feather_RP2040_Macropad:Kailh_Speed_Gold SW2
U 1 1 61EC69EF
P 6450 3450
F 0 "SW2" H 6445 3735 50  0000 C CNN
F 1 "Kailh_Speed_Gold" H 6445 3644 50  0000 C CNN
F 2 "" H 6450 3380 50  0001 C CNN
F 3 "https://github.com/keyboardio/keyswitch_documentation/blob/master/datasheets/Kailh/CPG151101D211-Speed-Gold.pdf" H 6450 3380 50  0001 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4400 6050 4400
Wire Wire Line
	6050 4730 4500 4730
Wire Wire Line
	4500 4730 4500 3650
Wire Wire Line
	4500 3650 4650 3650
Wire Wire Line
	4650 3550 4410 3550
Wire Wire Line
	4410 3550 4410 4840
Wire Wire Line
	4410 4840 5960 4840
Wire Wire Line
	5960 3960 6240 3960
Wire Wire Line
	4650 3450 4310 3450
Wire Wire Line
	4310 3450 4310 4950
Wire Wire Line
	4310 4950 5860 4950
Wire Wire Line
	5860 3450 6240 3450
Wire Wire Line
	4650 3350 4220 3350
Wire Wire Line
	4220 3350 4220 5050
Wire Wire Line
	4220 5050 5760 5050
Wire Wire Line
	5760 5050 5760 3000
Wire Wire Line
	5760 3000 6240 3000
Wire Wire Line
	4650 3250 4080 3250
Wire Wire Line
	4080 3250 4080 5220
Wire Wire Line
	4080 5220 6900 5220
Wire Wire Line
	6900 3000 6650 3000
Wire Wire Line
	6650 3450 6900 3450
Wire Wire Line
	6900 3450 6900 3000
Wire Wire Line
	6650 3960 6900 3960
Wire Wire Line
	6900 3960 6900 3450
$Comp
L Feather_RP2040_Macropad:Kailh_Speed_Gold SW3
U 1 1 61EC71B4
P 6450 3960
F 0 "SW3" H 6445 4245 50  0000 C CNN
F 1 "Kailh_Speed_Gold" H 6445 4154 50  0000 C CNN
F 2 "" H 6450 3890 50  0001 C CNN
F 3 "https://github.com/keyboardio/keyswitch_documentation/blob/master/datasheets/Kailh/CPG151101D211-Speed-Gold.pdf" H 6450 3890 50  0001 C CNN
	1    6450 3960
	1    0    0    -1  
$EndComp
$Comp
L Feather_RP2040_Macropad:Kailh_Speed_Gold SW4
U 1 1 61EC7669
P 6460 4400
F 0 "SW4" H 6455 4685 50  0000 C CNN
F 1 "Kailh_Speed_Gold" H 6455 4594 50  0000 C CNN
F 2 "" H 6460 4330 50  0001 C CNN
F 3 "https://github.com/keyboardio/keyswitch_documentation/blob/master/datasheets/Kailh/CPG151101D211-Speed-Gold.pdf" H 6460 4330 50  0001 C CNN
	1    6460 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5860 4950 5860 3450
Wire Wire Line
	5960 4840 5960 3960
Wire Wire Line
	6050 4400 6050 4730
Connection ~ 6900 3960
Connection ~ 6900 3450
Wire Wire Line
	6900 3960 6900 4400
Wire Wire Line
	6660 4400 6900 4400
Connection ~ 6900 4400
Wire Wire Line
	6900 4400 6900 5220
$EndSCHEMATC

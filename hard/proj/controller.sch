EESchema Schematic File Version 4
LIBS:controller-cache
EELAYER 26 0
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
L ESP8266:ESP-07v2 U2
U 1 1 5B0D1D70
P 4750 2550
F 0 "U2" H 4750 2450 50  0000 C CNN
F 1 "ESP-07v2" H 4750 2650 50  0000 C CNN
F 2 "ESP8266:ESP-07v2" H 4750 2550 50  0001 C CNN
F 3 "" H 4750 2550 50  0001 C CNN
	1    4750 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5B0D20CF
P 1500 6500
F 0 "J1" H 1300 6950 50  0000 L CNN
F 1 "microUSB" H 1300 6850 50  0000 L CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1650 6450 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/micro-usb-5s-b" H 1650 6450 50  0001 C CNN
	1    1500 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_Ground_Switch J2
U 1 1 5B0E59A9
P 2750 3350
F 0 "J2" H 2700 3525 50  0000 C CNN
F 1 "EXT1" H 2675 3250 50  0000 C CNN
F 2 "Project-Lib:StereoJack_3.5mm_Switch_Ledino_KB3SPRS_Horizontal" H 3000 3450 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/st-214n" H 3000 3450 50  0001 C CNN
	1    2750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B0E62C7
P 2100 6700
F 0 "C1" H 2125 6800 50  0000 L CNN
F 1 "0.47uF" H 2125 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.39x1.80mm_HandSolder" H 2138 6550 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/350621974" H 2100 6700 50  0001 C CNN
	1    2100 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5B0E64AB
P 3200 6700
F 0 "C2" H 3225 6800 50  0000 L CNN
F 1 "33uF" H 3225 6600 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C_Pad2.24x2.40mm_HandSolder" H 3238 6550 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/60843" H 3200 6700 50  0001 C CNN
	1    3200 6700
	1    0    0    -1  
$EndComp
Text Label 1900 6300 0    60   ~ 0
5V
$Comp
L power:GND #PWR03
U 1 1 5B0E79AE
P 4750 4750
F 0 "#PWR03" H 4750 4500 50  0001 C CNN
F 1 "GND" H 4750 4600 50  0000 C CNN
F 2 "" H 4750 4750 50  0001 C CNN
F 3 "" H 4750 4750 50  0001 C CNN
	1    4750 4750
	1    0    0    -1  
$EndComp
NoConn ~ 1800 6500
NoConn ~ 1800 6600
NoConn ~ 1800 6700
NoConn ~ 1400 6900
$Comp
L power:GND #PWR04
U 1 1 5B0E8A79
P 6100 1925
F 0 "#PWR04" H 6100 1675 50  0001 C CNN
F 1 "GND" H 6100 1775 50  0000 C CNN
F 2 "" H 6100 1925 50  0001 C CNN
F 3 "" H 6100 1925 50  0001 C CNN
	1    6100 1925
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5B0E8ABF
P 4750 1450
F 0 "#PWR05" H 4750 1300 50  0001 C CNN
F 1 "+3.3V" H 4750 1590 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5B0E915C
P 5200 4100
F 0 "SW2" H 5250 4200 50  0000 L CNN
F 1 "FLASH" H 5200 4040 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 5200 4300 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/tyco-1437566-3-fsmsm" H 5200 4300 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5B0E94B1
P 6275 3600
F 0 "#PWR06" H 6275 3450 50  0001 C CNN
F 1 "+3.3V" H 6275 3740 50  0000 C CNN
F 2 "" H 6275 3600 50  0001 C CNN
F 3 "" H 6275 3600 50  0001 C CNN
	1    6275 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B0E98AE
P 3400 1800
F 0 "R1" V 3480 1800 50  0000 C CNN
F 1 "10k" V 3400 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 3330 1800 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 3400 1800 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B0E99C1
P 3650 1800
F 0 "R2" V 3730 1800 50  0000 C CNN
F 1 "10k" V 3650 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 3580 1800 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 3650 1800 50  0001 C CNN
	1    3650 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5B0E9CFA
P 2375 2050
F 0 "SW1" H 2425 2150 50  0000 L CNN
F 1 "RESET" H 2375 1990 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 2375 2250 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/tyco-1437566-3-fsmsm" H 2375 2250 50  0001 C CNN
	1    2375 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B0E9D82
P 2025 2200
F 0 "#PWR07" H 2025 1950 50  0001 C CNN
F 1 "GND" H 2025 2050 50  0000 C CNN
F 2 "" H 2025 2200 50  0001 C CNN
F 3 "" H 2025 2200 50  0001 C CNN
	1    2025 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Test_Point TP1
U 1 1 5B0E9F2E
P 3125 2350
F 0 "TP1" V 3325 2500 50  0000 C BNN
F 1 "ADC" V 3225 2500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3125 2350 50  0001 C CNN
F 3 "" H 3125 2350 50  0001 C CNN
	1    3125 2350
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack3_Ground_Switch J3
U 1 1 5B0EAB6B
P 2750 3850
F 0 "J3" H 2700 4025 50  0000 C CNN
F 1 "EXT2" H 2675 3750 50  0000 C CNN
F 2 "Project-Lib:StereoJack_3.5mm_Switch_Ledino_KB3SPRS_Horizontal" H 3000 3950 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/st-214n" H 3000 3950 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_Ground_Switch J4
U 1 1 5B0EABB9
P 2750 4350
F 0 "J4" H 2700 4525 50  0000 C CNN
F 1 "EXT3" H 2675 4250 50  0000 C CNN
F 2 "Project-Lib:StereoJack_3.5mm_Switch_Ledino_KB3SPRS_Horizontal" H 3000 4450 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/st-214n" H 3000 4450 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_Ground_Switch J5
U 1 1 5B0EACA3
P 2750 4850
F 0 "J5" H 2700 5025 50  0000 C CNN
F 1 "EXT4" H 2675 4750 50  0000 C CNN
F 2 "Project-Lib:StereoJack_3.5mm_Switch_Ledino_KB3SPRS_Horizontal" H 3000 4950 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/st-214n" H 3000 4950 50  0001 C CNN
	1    2750 4850
	1    0    0    -1  
$EndComp
Text Label 3000 3250 0    60   ~ 0
BTN1
Text Label 3000 3750 0    60   ~ 0
BTN2
Text Label 3000 4250 0    60   ~ 0
BTN3
Text Label 3000 4750 0    60   ~ 0
BTN4
Entry Wire Line
	3450 3250 3550 3150
Entry Wire Line
	3450 3750 3550 3650
Entry Wire Line
	3450 4250 3550 4150
Entry Wire Line
	3450 4750 3550 4650
Entry Wire Line
	3250 3350 3350 3450
Entry Wire Line
	3250 3850 3350 3950
Entry Wire Line
	3250 4350 3350 4450
Entry Wire Line
	3250 4850 3350 4950
Text Label 3000 3350 0    60   ~ 0
XLED1
Text Label 3000 3850 0    60   ~ 0
XLED2
Text Label 3000 4350 0    60   ~ 0
XLED3
Text Label 3000 4850 0    60   ~ 0
XLED4
Text Label 3550 5100 0    60   ~ 0
LEDS
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5B0ECA8D
P 6400 1700
F 0 "J6" H 6400 1900 50  0000 C CNN
F 1 "UART" H 6400 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	-1   0    0    -1  
$EndComp
Entry Wire Line
	3550 2650 3650 2550
Entry Wire Line
	3550 2750 3650 2650
Entry Wire Line
	3550 2850 3650 2750
Entry Wire Line
	3550 2950 3650 2850
Text Label 3550 3250 0    60   ~ 0
BUTTONS
$Comp
L Device:LED D2
U 1 1 5B0EEB3D
P 9700 2150
F 0 "D2" H 9700 2250 50  0000 C CNN
F 1 "LED1" H 9700 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.12x1.40mm_HandSolder" H 9700 2150 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/to-2013bc-pg" H 9700 2150 50  0001 C CNN
	1    9700 2150
	1    0    0    1   
$EndComp
Text Label 3700 2750 0    60   ~ 0
BTN3
Text Label 3700 2850 0    60   ~ 0
BTN4
Text Label 3700 2650 0    60   ~ 0
BTN2
Text Label 3700 2550 0    60   ~ 0
BTN1
$Comp
L Device:R R14
U 1 1 5B0F0532
P 9300 2150
F 0 "R14" V 9380 2150 50  0000 C CNN
F 1 "180" V 9300 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 2150 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 2150 50  0001 C CNN
	1    9300 2150
	0    1    1    0   
$EndComp
Text Notes 5875 2975 0    60   ~ 0
Imax=12mA
Text Notes 8750 2350 0    60   ~ 0
I=20mA
$Comp
L Device:LED D3
U 1 1 5B0F138D
P 9700 2500
F 0 "D3" H 9700 2600 50  0000 C CNN
F 1 "LED2" H 9700 2400 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.12x1.40mm_HandSolder" H 9700 2500 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/to-2013bc-pg" H 9700 2500 50  0001 C CNN
	1    9700 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5B0F1393
P 9300 2500
F 0 "R15" V 9380 2500 50  0000 C CNN
F 1 "180" V 9300 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 2500 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 2500 50  0001 C CNN
	1    9300 2500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5B0F144D
P 9700 2850
F 0 "D4" H 9700 2950 50  0000 C CNN
F 1 "LED3" H 9700 2750 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.12x1.40mm_HandSolder" H 9700 2850 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/to-2013bc-pg" H 9700 2850 50  0001 C CNN
	1    9700 2850
	1    0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5B0F1453
P 9300 2850
F 0 "R16" V 9380 2850 50  0000 C CNN
F 1 "180" V 9300 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 2850 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 2850 50  0001 C CNN
	1    9300 2850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5B0F1531
P 9700 3200
F 0 "D5" H 9700 3300 50  0000 C CNN
F 1 "LED4" H 9700 3100 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.12x1.40mm_HandSolder" H 9700 3200 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/to-2013bc-pg" H 9700 3200 50  0001 C CNN
	1    9700 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5B0F1537
P 9300 3200
F 0 "R17" V 9380 3200 50  0000 C CNN
F 1 "180" V 9300 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 3200 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 3200 50  0001 C CNN
	1    9300 3200
	0    1    1    0   
$EndComp
Entry Wire Line
	9950 3700 10050 3800
Entry Wire Line
	9950 4050 10050 4150
Entry Wire Line
	9950 4400 10050 4500
Entry Wire Line
	9950 4750 10050 4850
Text Label 9600 3700 0    60   ~ 0
XLED1
Text Label 9600 4050 0    60   ~ 0
XLED2
Text Label 9600 4400 0    60   ~ 0
XLED3
Text Label 9600 4750 0    60   ~ 0
XLED4
Entry Wire Line
	6550 2650 6650 2550
Entry Wire Line
	6550 2850 6650 2750
Entry Wire Line
	6550 2550 6650 2450
Entry Wire Line
	6550 2450 6650 2350
Text Label 6000 2550 0    60   ~ 0
LED2_CTL
Text Label 5875 2850 0    60   ~ 0
LED4_CTL
Text Label 6000 2650 0    60   ~ 0
LED3_CTL
Text Label 6000 2450 0    60   ~ 0
LED1_CTL
Entry Wire Line
	8550 3200 8450 3300
Entry Wire Line
	8550 2850 8450 2950
Entry Wire Line
	8550 2500 8450 2600
Entry Wire Line
	8550 2150 8450 2250
Entry Wire Line
	8550 3700 8450 3600
Entry Wire Line
	8550 4050 8450 3950
Entry Wire Line
	8550 4400 8450 4300
Entry Wire Line
	8550 4750 8450 4650
Text Label 8650 2150 0    60   ~ 0
LED1_PWR
Text Label 8650 2500 0    60   ~ 0
LED2_PWR
Text Label 8650 2850 0    60   ~ 0
LED3_PWR
Text Label 8650 3200 0    60   ~ 0
LED4_PWR
Text Label 8650 3700 0    60   ~ 0
LED1_PWR
Text Label 8650 4050 0    60   ~ 0
LED2_PWR
Text Label 8650 4400 0    60   ~ 0
LED3_PWR
Text Label 8650 4750 0    60   ~ 0
LED4_PWR
$Comp
L Device:R R10
U 1 1 5B0F1280
P 7350 2400
F 0 "R10" V 7430 2400 50  0000 C CNN
F 1 "10k" V 7350 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 7280 2400 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 7350 2400 50  0001 C CNN
	1    7350 2400
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5B0F1898
P 7750 2400
F 0 "Q1" H 7950 2450 50  0000 L CNN
F 1 "BC848B" H 7950 2350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 2500 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/bc848b" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    -1  
$EndComp
Entry Wire Line
	8450 4200 8350 4100
Text Label 7850 2150 0    60   ~ 0
LED1_PWR
$Comp
L power:+3.3V #PWR08
U 1 1 5B0F424B
P 10050 1900
F 0 "#PWR08" H 10050 1750 50  0001 C CNN
F 1 "+3.3V" H 10050 2040 50  0000 C CNN
F 2 "" H 10050 1900 50  0001 C CNN
F 3 "" H 10050 1900 50  0001 C CNN
	1    10050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5B0F48A7
P 2300 3150
F 0 "#PWR09" H 2300 3000 50  0001 C CNN
F 1 "+3.3V" H 2300 3290 50  0000 C CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	6650 2300 6750 2400
Text Label 6800 2400 0    60   ~ 0
LED1_CTL
$Comp
L Device:R R11
U 1 1 5B0F6EAE
P 7350 3050
F 0 "R11" V 7430 3050 50  0000 C CNN
F 1 "10k" V 7350 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 7280 3050 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 7350 3050 50  0001 C CNN
	1    7350 3050
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 5B0F6EB4
P 7750 3050
F 0 "Q2" H 7950 3100 50  0000 L CNN
F 1 "BC848B" H 7950 3000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 3150 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/bc848b" H 7750 3050 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
Text Notes 6900 2800 0    60   ~ 0
Ib=330uA\nIc=62mA
Entry Wire Line
	8450 3550 8350 3450
Text Label 7850 2800 0    60   ~ 0
LED2_PWR
Entry Wire Line
	6650 2950 6750 3050
Text Label 6800 3050 0    60   ~ 0
LED2_CTL
$Comp
L Device:R R12
U 1 1 5B0F74DF
P 7350 3700
F 0 "R12" V 7430 3700 50  0000 C CNN
F 1 "10k" V 7350 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 7280 3700 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 7350 3700 50  0001 C CNN
	1    7350 3700
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q3
U 1 1 5B0F74E5
P 7750 3700
F 0 "Q3" H 7950 3750 50  0000 L CNN
F 1 "BC848B" H 7950 3650 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 3800 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/bc848b" H 7750 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	8450 2900 8350 2800
Text Label 7850 3450 0    60   ~ 0
LED3_PWR
Entry Wire Line
	6650 3600 6750 3700
Text Label 6800 3700 0    60   ~ 0
LED3_CTL
$Comp
L Device:R R13
U 1 1 5B0F8A41
P 7350 4350
F 0 "R13" V 7430 4350 50  0000 C CNN
F 1 "10k" V 7350 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 7280 4350 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 7350 4350 50  0001 C CNN
	1    7350 4350
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q4
U 1 1 5B0F8A47
P 7750 4350
F 0 "Q4" H 7950 4400 50  0000 L CNN
F 1 "BC848B" H 7950 4300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 7950 4450 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/bc848b" H 7750 4350 50  0001 C CNN
	1    7750 4350
	1    0    0    -1  
$EndComp
Entry Wire Line
	8450 2250 8350 2150
Text Label 7850 4100 0    60   ~ 0
LED4_PWR
Entry Wire Line
	6650 4250 6750 4350
Text Label 6800 4350 0    60   ~ 0
LED4_CTL
$Comp
L Device:R R3
U 1 1 5B0FD9F2
P 4150 3500
F 0 "R3" V 4230 3500 50  0000 C CNN
F 1 "10k" V 4150 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 4080 3500 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 4150 3500 50  0001 C CNN
	1    4150 3500
	0    1    1    0   
$EndComp
Entry Wire Line
	3550 3600 3650 3500
Entry Wire Line
	3550 3900 3650 3800
Entry Wire Line
	3550 4200 3650 4100
Entry Wire Line
	3550 4500 3650 4400
Text Label 3750 3500 0    60   ~ 0
BTN1
Text Label 3750 3800 0    60   ~ 0
BTN2
Text Label 3750 4100 0    60   ~ 0
BTN3
Text Label 3750 4400 0    60   ~ 0
BTN4
$Comp
L Device:R R4
U 1 1 5B0FDF49
P 4150 3800
F 0 "R4" V 4230 3800 50  0000 C CNN
F 1 "10k" V 4150 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 4080 3800 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 4150 3800 50  0001 C CNN
	1    4150 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5B0FDFCF
P 4150 4100
F 0 "R5" V 4230 4100 50  0000 C CNN
F 1 "10k" V 4150 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 4080 4100 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 4150 4100 50  0001 C CNN
	1    4150 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5B0FE058
P 4150 4400
F 0 "R6" V 4230 4400 50  0000 C CNN
F 1 "10k" V 4150 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 4080 4400 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 4150 4400 50  0001 C CNN
	1    4150 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 2850 3850 2850
Wire Wire Line
	3650 2750 3850 2750
Wire Wire Line
	3650 2650 3850 2650
Wire Wire Line
	3650 2550 3850 2550
Wire Wire Line
	4750 1450 4750 1600
Wire Wire Line
	5900 2350 5900 1700
Wire Wire Line
	5800 2250 5800 1800
Wire Wire Line
	6100 1900 6200 1900
Wire Wire Line
	6100 1925 6100 1900
Wire Wire Line
	5900 1700 6200 1700
Wire Wire Line
	5650 2350 5900 2350
Wire Wire Line
	5800 1800 6200 1800
Wire Wire Line
	5650 2250 5800 2250
Wire Wire Line
	2950 4850 3250 4850
Wire Wire Line
	2950 4350 3250 4350
Wire Wire Line
	2950 3850 3250 3850
Wire Wire Line
	2950 3350 3250 3350
Connection ~ 2300 4050
Wire Wire Line
	2300 4050 2550 4050
Connection ~ 2300 4550
Wire Wire Line
	2300 4550 2550 4550
Wire Wire Line
	2300 5050 2550 5050
Wire Wire Line
	2550 3550 2300 3550
Wire Wire Line
	2950 4750 3450 4750
Wire Wire Line
	2950 4250 3450 4250
Wire Wire Line
	2950 3750 3450 3750
Wire Wire Line
	2950 3250 3450 3250
Wire Wire Line
	2025 2050 2175 2050
Wire Wire Line
	2025 2200 2025 2050
Connection ~ 3400 2050
Wire Wire Line
	3400 2250 3850 2250
Wire Wire Line
	3400 1950 3400 2050
Wire Wire Line
	3650 2450 3850 2450
Wire Wire Line
	3650 1950 3650 2450
Connection ~ 3650 1600
Wire Wire Line
	3650 1650 3650 1600
Connection ~ 4750 1600
Wire Wire Line
	3400 1600 3400 1650
Wire Wire Line
	3400 1600 3650 1600
Wire Wire Line
	1500 7050 2100 7050
Wire Wire Line
	1500 6900 1500 7050
Wire Wire Line
	1800 6300 2100 6300
Wire Wire Line
	3200 7050 3200 6850
Connection ~ 2100 7050
Wire Wire Line
	2100 6850 2100 7050
Wire Wire Line
	2650 6800 2650 7050
Connection ~ 2650 7050
Wire Wire Line
	4750 3450 4750 3500
Connection ~ 3200 6500
Wire Wire Line
	2950 6500 3200 6500
Wire Wire Line
	3200 6350 3200 6500
Connection ~ 2100 6500
Wire Wire Line
	2100 6500 2350 6500
Wire Wire Line
	2100 6300 2100 6500
Wire Wire Line
	9550 2150 9450 2150
Wire Wire Line
	5650 2450 6550 2450
Wire Wire Line
	5650 2550 6550 2550
Wire Wire Line
	9850 2150 10050 2150
Wire Wire Line
	9550 2500 9450 2500
Wire Wire Line
	9550 2850 9450 2850
Wire Wire Line
	9550 3200 9450 3200
Wire Wire Line
	10050 2500 9850 2500
Wire Wire Line
	10050 2850 9850 2850
Wire Wire Line
	10050 3200 9850 3200
Wire Wire Line
	5700 4100 5400 4100
Wire Wire Line
	9450 3700 9950 3700
Wire Wire Line
	9450 4050 9950 4050
Wire Wire Line
	9450 4400 9950 4400
Wire Wire Line
	9450 4750 9950 4750
Wire Wire Line
	8550 2150 9150 2150
Wire Wire Line
	9150 2500 8550 2500
Wire Wire Line
	9150 2850 8550 2850
Wire Wire Line
	9150 3200 8550 3200
Wire Wire Line
	9150 3700 8550 3700
Wire Wire Line
	9150 4050 8550 4050
Wire Wire Line
	9150 4400 8550 4400
Wire Wire Line
	9150 4750 8550 4750
Wire Wire Line
	7200 2400 6750 2400
Wire Wire Line
	7850 2150 8350 2150
Wire Wire Line
	10050 1900 10050 2150
Connection ~ 10050 2500
Connection ~ 10050 2850
Connection ~ 10050 2150
Wire Wire Line
	2300 3150 2300 3550
Connection ~ 2300 3550
Wire Wire Line
	7850 2650 7850 2600
Wire Wire Line
	7850 2200 7850 2150
Wire Wire Line
	7500 2400 7550 2400
Wire Wire Line
	7200 3050 6750 3050
Wire Wire Line
	7850 2800 8350 2800
Wire Wire Line
	7850 3300 7850 3250
Wire Wire Line
	7850 2850 7850 2800
Wire Wire Line
	7500 3050 7550 3050
Wire Wire Line
	7200 3700 6750 3700
Wire Wire Line
	7850 3450 8350 3450
Wire Wire Line
	7850 3900 7850 3950
Wire Wire Line
	7850 3500 7850 3450
Wire Wire Line
	7500 3700 7550 3700
Wire Wire Line
	7200 4350 6750 4350
Wire Wire Line
	7850 4100 8350 4100
Wire Wire Line
	7850 4600 7850 4550
Wire Wire Line
	7850 4150 7850 4100
Wire Wire Line
	7500 4350 7550 4350
Wire Wire Line
	7850 2650 7600 2650
Wire Wire Line
	7850 3950 7600 3950
Connection ~ 7600 3950
Wire Wire Line
	7850 3300 7600 3300
Connection ~ 7600 3300
Connection ~ 7600 4600
Connection ~ 4750 4600
Wire Wire Line
	7600 2650 7600 3300
Wire Wire Line
	3650 4400 4000 4400
Wire Wire Line
	3650 3800 4000 3800
Wire Wire Line
	3650 3500 4000 3500
Wire Wire Line
	4300 3500 4750 3500
Connection ~ 4750 3500
Wire Wire Line
	3650 4100 4000 4100
Wire Wire Line
	4300 3800 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	4300 4100 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	4300 4400 4750 4400
Connection ~ 4750 4400
$Comp
L Device:C C3
U 1 1 5B1015E7
P 3600 6700
F 0 "C3" H 3625 6800 50  0000 L CNN
F 1 "0.1uF" H 3625 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.39x1.80mm_HandSolder" H 3638 6550 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/32386" H 3600 6700 50  0001 C CNN
	1    3600 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6500 3600 6550
Wire Wire Line
	3600 7050 3600 6850
Connection ~ 3200 7050
$Comp
L Device:R R18
U 1 1 5B102693
P 9300 3700
F 0 "R18" V 9380 3700 50  0000 C CNN
F 1 "180" V 9300 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 3700 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 3700 50  0001 C CNN
	1    9300 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5B102699
P 9300 4050
F 0 "R19" V 9380 4050 50  0000 C CNN
F 1 "180" V 9300 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 4050 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 4050 50  0001 C CNN
	1    9300 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5B10269F
P 9300 4400
F 0 "R20" V 9380 4400 50  0000 C CNN
F 1 "180" V 9300 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 4400 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 4400 50  0001 C CNN
	1    9300 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5B1026A5
P 9300 4750
F 0 "R21" V 9380 4750 50  0000 C CNN
F 1 "180" V 9300 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 9230 4750 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079468" H 9300 4750 50  0001 C CNN
	1    9300 4750
	0    1    1    0   
$EndComp
Wire Bus Line
	3350 5100 10050 5100
Text Label 3050 2050 0    60   ~ 0
RESET
Text Label 3150 2350 0    60   ~ 0
ADC
Text Label 5800 1850 2    60   ~ 0
UART_TX
Text Label 5900 1750 2    60   ~ 0
UART_RX
Text Label 3650 2100 0    60   ~ 0
CHIP_EN
$Comp
L power:GND #PWR0101
U 1 1 5B15B7F1
P 2650 7150
F 0 "#PWR0101" H 2650 6900 50  0001 C CNN
F 1 "GND" H 2650 7000 50  0000 C CNN
F 2 "" H 2650 7150 50  0001 C CNN
F 3 "" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5B15B994
P 3200 6350
F 0 "#PWR0102" H 3200 6200 50  0001 C CNN
F 1 "+3.3V" H 3200 6490 50  0000 C CNN
F 2 "" H 3200 6350 50  0001 C CNN
F 3 "" H 3200 6350 50  0001 C CNN
	1    3200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4050 2300 4550
Wire Wire Line
	2300 4550 2300 5050
Wire Wire Line
	3400 2050 3400 2250
Wire Wire Line
	3650 1600 4750 1600
Wire Wire Line
	4750 1600 4750 1650
Wire Wire Line
	4750 1600 6200 1600
Wire Wire Line
	2100 7050 2650 7050
Wire Wire Line
	2650 7050 2650 7150
Wire Wire Line
	2650 7050 3200 7050
Wire Wire Line
	3200 6500 3600 6500
Wire Wire Line
	3200 6500 3200 6550
Wire Wire Line
	2100 6500 2100 6550
Wire Wire Line
	10050 2500 10050 2850
Wire Wire Line
	10050 2850 10050 3200
Wire Wire Line
	10050 2150 10050 2500
Wire Wire Line
	2300 3550 2300 4050
Wire Wire Line
	7600 3950 7600 4600
Wire Wire Line
	7600 3300 7600 3950
Wire Wire Line
	7600 4600 7850 4600
Wire Wire Line
	4750 4600 4750 4750
Wire Wire Line
	4750 3500 4750 3800
Wire Wire Line
	4750 3800 4750 4100
Wire Wire Line
	4750 4100 4750 4400
Wire Wire Line
	4750 4400 4750 4600
Wire Wire Line
	3200 7050 3600 7050
NoConn ~ 2950 3150
NoConn ~ 2950 3450
NoConn ~ 2950 3650
NoConn ~ 2950 3950
NoConn ~ 2950 4150
NoConn ~ 2950 4450
NoConn ~ 2950 4650
NoConn ~ 2950 4950
Wire Wire Line
	6475 2850 6475 3300
Wire Wire Line
	5650 2850 6475 2850
$Comp
L Device:R R8
U 1 1 5B32C5CE
P 6475 3450
F 0 "R8" V 6375 3450 50  0000 C CNN
F 1 "10k" V 6475 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 6405 3450 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 6475 3450 50  0001 C CNN
	1    6475 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 4600 6475 4600
Wire Wire Line
	6475 3600 6475 4600
Connection ~ 6475 4600
Wire Wire Line
	6475 4600 7600 4600
Wire Wire Line
	5875 4100 5700 4100
Wire Wire Line
	5650 2650 5700 2650
Connection ~ 5700 4100
$Comp
L Device:R R7
U 1 1 5B0E94ED
P 6025 4100
F 0 "R7" V 5925 4100 50  0000 C CNN
F 1 "10k" V 6025 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 5955 4100 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 6025 4100 50  0001 C CNN
	1    6025 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6275 4100 6175 4100
Wire Wire Line
	6275 3600 6275 3800
$Comp
L Device:R R9
U 1 1 5B35BC97
P 6025 3800
F 0 "R9" V 5925 3800 50  0000 C CNN
F 1 "10k" V 6025 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.29x1.40mm_HandSolder" V 5955 3800 50  0001 C CNN
F 3 "https://www.chipdip.ru/product0/9000079514" H 6025 3800 50  0001 C CNN
	1    6025 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5875 3800 5800 3800
Wire Wire Line
	6175 3800 6275 3800
Connection ~ 6275 3800
Wire Wire Line
	6275 3800 6275 4100
Wire Wire Line
	6475 2850 6550 2850
Connection ~ 6475 2850
Wire Wire Line
	5000 4100 4750 4100
Wire Wire Line
	5650 2750 5800 2750
Wire Wire Line
	5800 2750 5800 3800
Wire Wire Line
	5700 2650 6550 2650
Connection ~ 5700 2650
Text Label 5800 3300 0    60   ~ 0
STATUS_LED
Wire Wire Line
	3125 2350 3850 2350
Wire Wire Line
	2575 2050 3400 2050
Wire Wire Line
	5700 2650 5700 4100
Wire Bus Line
	3350 3450 3350 5100
Wire Bus Line
	10050 3800 10050 5100
Wire Bus Line
	6650 2300 6650 4250
Wire Bus Line
	3550 2650 3550 4650
Wire Bus Line
	8450 2250 8450 4650
$Comp
L Project-Lib:LM3940 U1
U 1 1 5B43FD8A
P 2650 6500
F 0 "U1" H 2650 6742 50  0000 C CNN
F 1 "LM3940" H 2650 6651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2650 6500 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/lm3940imp-3.3-nopb" H 2650 6500 50  0001 C CNN
	1    2650 6500
	1    0    0    -1  
$EndComp
$EndSCHEMATC

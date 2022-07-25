EESchema Schematic File Version 4
LIBS:NES-MEP-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MEP ESP32"
Date "2021-11-09"
Rev "2.00"
Comp "www.dabbler.dk"
Comment1 "Buck converter must be set around 3.6v"
Comment2 "Mount either R3 or R4 (not both!)"
Comment3 "The MEP connector legs should not be fully inserted in the PCB"
Comment4 "WARNING: The MEP pins does NOT match the MEP documentation"
$EndDescr
Text GLabel 9550 6150 0    50   Output ~ 0
ENABLE
Text GLabel 9550 6250 0    50   Output ~ 0
TXD
Text GLabel 10100 6050 2    50   Input ~ 0
RXD
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 607340DB
P 9750 4500
F 0 "J2" H 9858 4681 50  0000 C CNN
F 1 "Buck +24v input" H 9858 4590 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 9750 4500 50  0001 C CNN
F 3 "~" H 9750 4500 50  0001 C CNN
	1    9750 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 607351B4
P 9750 4750
F 0 "J3" H 9858 4931 50  0000 C CNN
F 1 "Buck GND output" H 9858 4840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 9750 4750 50  0001 C CNN
F 3 "~" H 9750 4750 50  0001 C CNN
	1    9750 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 607354A8
P 9750 5000
F 0 "J4" H 9858 5181 50  0000 C CNN
F 1 "Buck +3v3 output (see note)" H 9858 5090 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 9750 5000 50  0001 C CNN
F 3 "~" H 9750 5000 50  0001 C CNN
	1    9750 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 60735846
P 9750 4250
F 0 "J1" H 9858 4431 50  0000 C CNN
F 1 "Buck GND input" H 9858 4340 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_4.0x4.0mm" H 9750 4250 50  0001 C CNN
F 3 "~" H 9750 4250 50  0001 C CNN
	1    9750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60735C12
P 11000 4250
F 0 "#PWR0103" H 11000 4000 50  0001 C CNN
F 1 "GND" H 11005 4077 50  0000 C CNN
F 2 "" H 11000 4250 50  0001 C CNN
F 3 "" H 11000 4250 50  0001 C CNN
	1    11000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4250 10550 4250
Wire Wire Line
	9950 4500 10350 4500
$Comp
L power:+3.3V #PWR0106
U 1 1 60737897
P 10600 5500
F 0 "#PWR0106" H 10600 5350 50  0001 C CNN
F 1 "+3.3V" H 10600 5650 50  0000 C CNN
F 2 "" H 10600 5500 50  0001 C CNN
F 3 "" H 10600 5500 50  0001 C CNN
	1    10600 5500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60737F36
P 10750 6150
F 0 "#FLG0101" H 10750 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 6300 50  0000 C CNN
F 2 "" H 10750 6150 50  0001 C CNN
F 3 "~" H 10750 6150 50  0001 C CNN
	1    10750 6150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6073F0A2
P 11000 5500
F 0 "#FLG0102" H 11000 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 10950 5650 50  0000 C CNN
F 2 "" H 11000 5500 50  0001 C CNN
F 3 "~" H 11000 5500 50  0001 C CNN
	1    11000 5500
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX3232 U1
U 1 1 607436DE
P 4950 5500
F 0 "U1" H 4450 6750 50  0000 C CNN
F 1 "MAX3232" H 4550 6650 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 5000 4450 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3222-MAX3241.pdf" H 4950 5600 50  0001 C CNN
	1    4950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 607469E4
P 4950 6700
F 0 "#PWR0107" H 4950 6450 50  0001 C CNN
F 1 "GND" H 4955 6527 50  0000 C CNN
F 2 "" H 4950 6700 50  0001 C CNN
F 3 "" H 4950 6700 50  0001 C CNN
	1    4950 6700
	1    0    0    -1  
$EndComp
Text GLabel 6350 6200 2    50   Input ~ 0
RXD
Text GLabel 6350 5800 2    50   Output ~ 0
TXD
Text GLabel 6350 5600 2    50   Output ~ 0
ENABLE
Text GLabel 4100 5600 0    50   Input ~ 0
ENABLE_TTL
Text GLabel 4100 5800 0    50   Input ~ 0
TXD2_TTL
Wire Wire Line
	5750 6000 6750 6000
NoConn ~ 4150 6000
Text GLabel 4100 6200 0    50   Output ~ 0
RXD2_TTL
$Comp
L Device:C C1
U 1 1 6074C960
P 3950 4750
F 0 "C1" H 4065 4796 50  0000 L CNN
F 1 "100nF" H 4065 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3988 4600 50  0001 C CNN
F 3 "~" H 3950 4750 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4600 4150 4600
Wire Wire Line
	3950 4900 4150 4900
$Comp
L Device:C C2
U 1 1 6074D775
P 5800 4750
F 0 "C2" V 5750 4600 50  0000 L CNN
F 1 "100nF" V 5950 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5838 4600 50  0001 C CNN
F 3 "~" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6074DD2D
P 5950 5100
F 0 "C3" V 5900 5000 50  0000 C CNN
F 1 "100nF" V 5789 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5988 4950 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 6074E54A
P 4950 3800
F 0 "#PWR0109" H 4950 3650 50  0001 C CNN
F 1 "+3.3V" H 4950 3950 50  0000 C CNN
F 2 "" H 4950 3800 50  0001 C CNN
F 3 "" H 4950 3800 50  0001 C CNN
	1    4950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5100 5800 5100
$Comp
L Device:C C5
U 1 1 6075101E
P 6300 4250
F 0 "C5" V 6350 4300 50  0000 L CNN
F 1 "100nF" V 6450 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6338 4100 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 60752A32
P 6150 5400
F 0 "C4" V 6100 5300 50  0000 C CNN
F 1 "100nF" V 6000 5400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6188 5250 50  0001 C CNN
F 3 "~" H 6150 5400 50  0001 C CNN
	1    6150 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 5400 6750 5400
$Comp
L Device:D D1
U 1 1 6076890E
P 5900 5600
F 0 "D1" H 6000 5650 50  0000 C CNN
F 1 "1N4007" H 5900 5500 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5900 5600 50  0001 C CNN
F 3 "~" H 5900 5600 50  0001 C CNN
	1    5900 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 5400 6000 5400
$Comp
L power:+3.3V #PWR0114
U 1 1 60780A5E
P 7700 2650
F 0 "#PWR0114" H 7700 2500 50  0001 C CNN
F 1 "+3.3V" H 7700 2800 50  0000 C CNN
F 2 "" H 7700 2650 50  0001 C CNN
F 3 "" H 7700 2650 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2750 7700 2650
NoConn ~ 7100 3150
NoConn ~ 7100 3250
$Comp
L power:GND #PWR0116
U 1 1 607845F0
P 7700 5600
F 0 "#PWR0116" H 7700 5350 50  0001 C CNN
F 1 "GND" H 7705 5427 50  0000 C CNN
F 2 "" H 7700 5600 50  0001 C CNN
F 3 "" H 7700 5600 50  0001 C CNN
	1    7700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3450 8400 3450
Text GLabel 8400 4050 2    50   Output ~ 0
TXD2_TTL
Wire Wire Line
	8300 4050 8400 4050
Text GLabel 8400 3950 2    50   Input ~ 0
RXD2_TTL
Wire Wire Line
	8300 3950 8400 3950
NoConn ~ 8300 3350
NoConn ~ 8300 3550
NoConn ~ 8300 3650
NoConn ~ 8300 3750
NoConn ~ 8300 3850
NoConn ~ 8300 4150
NoConn ~ 8300 4250
NoConn ~ 8300 4350
NoConn ~ 8300 4450
NoConn ~ 8300 4550
NoConn ~ 8300 4650
NoConn ~ 8300 4750
NoConn ~ 8300 4850
NoConn ~ 8300 5050
NoConn ~ 8300 5150
NoConn ~ 8300 5250
NoConn ~ 7100 4650
NoConn ~ 7100 4550
NoConn ~ 7100 4450
NoConn ~ 7100 4350
NoConn ~ 7100 4250
NoConn ~ 7100 4150
Wire Wire Line
	8300 2950 8600 2950
Text GLabel 8400 3250 2    50   Input ~ 0
ESP_RXD0
Wire Wire Line
	8300 3050 8400 3050
Wire Wire Line
	8300 3250 8400 3250
Connection ~ 7700 2650
$Comp
L Device:R R2
U 1 1 607AEF01
P 8600 2800
F 0 "R2" H 8530 2754 50  0000 R CNN
F 1 "10K" H 8530 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 2800 50  0001 C CNN
F 3 "~" H 8600 2800 50  0001 C CNN
	1    8600 2800
	-1   0    0    1   
$EndComp
Connection ~ 8600 2950
Wire Wire Line
	8600 2950 8650 2950
Wire Wire Line
	8600 2650 7700 2650
$Comp
L Device:R R1
U 1 1 607EC198
P 6700 2800
F 0 "R1" H 6630 2754 50  0000 R CNN
F 1 "10K" H 6630 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 2800 50  0001 C CNN
F 3 "~" H 6700 2800 50  0001 C CNN
	1    6700 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 2650 7700 2650
Wire Wire Line
	7100 2950 6700 2950
Text GLabel 10050 3400 2    50   Input ~ 0
ESP_TXD0
Text GLabel 10050 3500 2    50   Output ~ 0
ESP_RXD0
NoConn ~ 9950 3700
$Comp
L power:GND #PWR0118
U 1 1 607F681C
P 10050 3800
F 0 "#PWR0118" H 10050 3550 50  0001 C CNN
F 1 "GND" H 10055 3627 50  0000 C CNN
F 2 "" H 10050 3800 50  0001 C CNN
F 3 "" H 10050 3800 50  0001 C CNN
	1    10050 3800
	1    0    0    -1  
$EndComp
Text GLabel 8650 2950 2    50   Input ~ 0
ESP_PROGRAM
Text GLabel 8400 3050 2    50   Output ~ 0
ESP_TXD0
Wire Wire Line
	9950 4750 10550 4750
$Comp
L power:GND #PWR0119
U 1 1 608064FA
P 9100 6050
F 0 "#PWR0119" H 9100 5800 50  0001 C CNN
F 1 "GND" H 9105 5877 50  0000 C CNN
F 2 "" H 9100 6050 50  0001 C CNN
F 3 "" H 9100 6050 50  0001 C CNN
	1    9100 6050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 608068A7
P 9200 6050
F 0 "#FLG0105" H 9200 6125 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 6200 50  0000 C CNN
F 2 "" H 9200 6050 50  0001 C CNN
F 3 "~" H 9200 6050 50  0001 C CNN
	1    9200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 6050 9200 6050
Connection ~ 9200 6050
Wire Wire Line
	9200 6050 9100 6050
Wire Wire Line
	5750 6200 5800 6200
Wire Wire Line
	4100 6200 4150 6200
Wire Wire Line
	4100 5800 4150 5800
Wire Wire Line
	4100 5600 4150 5600
Wire Wire Line
	5750 4600 5800 4600
Wire Wire Line
	5750 4900 5800 4900
Wire Wire Line
	5750 5800 5800 5800
Wire Wire Line
	7700 5550 7700 5600
Wire Wire Line
	9550 6150 9600 6150
Wire Wire Line
	9550 6250 9600 6250
$Comp
L power:GND #PWR0120
U 1 1 60822ED9
P 6750 6000
F 0 "#PWR0120" H 6750 5750 50  0001 C CNN
F 1 "GND" H 6755 5827 50  0000 C CNN
F 2 "" H 6750 6000 50  0001 C CNN
F 3 "" H 6750 6000 50  0001 C CNN
	1    6750 6000
	1    0    0    -1  
$EndComp
Text GLabel 8400 3450 2    50   Output ~ 0
ENABLE_TTL
Wire Wire Line
	10550 4750 10550 4250
Connection ~ 10550 4250
Wire Wire Line
	10550 4250 11000 4250
Wire Wire Line
	6150 4250 6100 4250
Wire Wire Line
	6750 5400 6750 6000
Connection ~ 6750 6000
Wire Wire Line
	6100 5100 6100 4250
Connection ~ 6100 4250
Wire Wire Line
	6100 4250 5200 4250
Wire Wire Line
	6750 4250 6750 5400
Connection ~ 6750 5400
$Comp
L RF_Module:ESP32-WROOM-32 U2
U 1 1 60779273
P 7700 4150
F 0 "U2" H 7550 5500 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 8100 5500 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 7700 2650 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 7400 4200 50  0001 C CNN
	1    7700 4150
	1    0    0    -1  
$EndComp
NoConn ~ 8300 3150
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 607E2E6D
P 9750 3600
F 0 "J5" H 9642 3075 50  0000 C CNN
F 1 "ESP_Prog/debug + ext. power" H 9250 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9750 3600 50  0001 C CNN
F 3 "~" H 9750 3600 50  0001 C CNN
	1    9750 3600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 607F0492
P 10600 3600
F 0 "#PWR0117" H 10600 3450 50  0001 C CNN
F 1 "+3.3V" H 10600 3750 50  0000 C CNN
F 2 "" H 10600 3600 50  0001 C CNN
F 3 "" H 10600 3600 50  0001 C CNN
	1    10600 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Top_Bottom J7
U 1 1 6087D08D
P 9800 5400
F 0 "J7" H 9908 5581 50  0000 C CNN
F 1 "Program/Enable Meter Power" H 9700 5500 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x02_P1.27mm_Vertical_SMD" H 9800 5400 50  0001 C CNN
F 3 "~" H 9800 5400 50  0001 C CNN
	1    9800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5500 11000 5500
Wire Wire Line
	10100 5500 10600 5500
Connection ~ 10600 5500
Wire Wire Line
	9950 5000 10300 5000
Wire Wire Line
	10300 5000 10300 5400
Wire Wire Line
	10300 5400 10100 5400
NoConn ~ 9950 3300
$Comp
L power:GND #PWR0101
U 1 1 60B427FC
P 9500 5500
F 0 "#PWR0101" H 9500 5250 50  0001 C CNN
F 1 "GND" H 9505 5327 50  0000 C CNN
F 2 "" H 9500 5500 50  0001 C CNN
F 3 "" H 9500 5500 50  0001 C CNN
	1    9500 5500
	1    0    0    -1  
$EndComp
Text GLabel 9500 5400 0    50   Output ~ 0
ESP_PROGRAM
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 60B72313
P 9800 6150
F 0 "J6" H 9850 6467 50  0000 C CNN
F 1 "NES Meter MEP" H 9850 6376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 9800 6150 50  0001 C CNN
F 3 "~" H 9800 6150 50  0001 C CNN
	1    9800 6150
	1    0    0    -1  
$EndComp
NoConn ~ 10100 6250
$Comp
L power:+24V #PWR0102
U 1 1 61042C79
P 10400 6150
F 0 "#PWR0102" H 10400 6000 50  0001 C CNN
F 1 "+24V" H 10415 6323 50  0000 C CNN
F 2 "" H 10400 6150 50  0001 C CNN
F 3 "" H 10400 6150 50  0001 C CNN
	1    10400 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6150 10400 6150
Connection ~ 10400 6150
Wire Wire Line
	10400 6150 10750 6150
$Comp
L power:+24V #PWR0104
U 1 1 61043436
P 10350 4500
F 0 "#PWR0104" H 10350 4350 50  0001 C CNN
F 1 "+24V" H 10365 4673 50  0000 C CNN
F 2 "" H 10350 4500 50  0001 C CNN
F 3 "" H 10350 4500 50  0001 C CNN
	1    10350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5500 9600 5500
Wire Wire Line
	9500 5400 9600 5400
$Comp
L Device:R R3
U 1 1 618C1329
P 4950 4000
F 0 "R3" H 4880 3954 50  0000 R CNN
F 1 "0" H 4880 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 4000 50  0001 C CNN
F 3 "~" H 4950 4000 50  0001 C CNN
	1    4950 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 618C1ABF
P 5200 4000
F 0 "R4" H 5130 3954 50  0000 R CNN
F 1 "0" H 5130 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 4000 50  0001 C CNN
F 3 "~" H 5200 4000 50  0001 C CNN
	1    5200 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4150 5200 4250
Wire Wire Line
	4950 3800 4950 3850
Text GLabel 8400 4950 2    50   Output ~ 0
RS3232_ENABLE
Wire Wire Line
	8300 4950 8400 4950
Text GLabel 5250 3750 2    50   Input ~ 0
RS3232_ENABLE
Wire Wire Line
	5200 3850 5200 3750
Wire Wire Line
	5200 3750 5250 3750
Wire Wire Line
	6450 4250 6750 4250
$Comp
L Device:R R6
U 1 1 618D6882
P 5950 6200
F 0 "R6" V 6050 6250 50  0000 R CNN
F 1 "0" V 5850 6200 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 6200 50  0001 C CNN
F 3 "~" H 5950 6200 50  0001 C CNN
	1    5950 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 618DA8FF
P 5950 5800
F 0 "R5" V 6050 5850 50  0000 R CNN
F 1 "0" V 5850 5800 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 5800 50  0001 C CNN
F 3 "~" H 5950 5800 50  0001 C CNN
	1    5950 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 618DAE5E
P 6200 5600
F 0 "R7" V 6300 5550 50  0000 R CNN
F 1 "0" V 6100 5600 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 5600 50  0001 C CNN
F 3 "~" H 6200 5600 50  0001 C CNN
	1    6200 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 5800 6350 5800
Wire Wire Line
	6100 6200 6350 6200
Wire Wire Line
	4950 4150 4950 4250
Wire Wire Line
	5200 4250 4950 4250
Connection ~ 5200 4250
Connection ~ 4950 4250
Wire Wire Line
	4950 4250 4950 4300
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 618E4318
P 4750 4250
F 0 "#FLG0103" H 4750 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 4400 50  0000 C CNN
F 2 "" H 4750 4250 50  0001 C CNN
F 3 "~" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4250 4950 4250
Wire Wire Line
	9950 3400 10050 3400
Wire Wire Line
	9950 3500 10050 3500
Wire Wire Line
	9950 3600 10600 3600
Wire Wire Line
	9950 3800 10050 3800
$EndSCHEMATC

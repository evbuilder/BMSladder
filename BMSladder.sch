EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Link - for a Daisy Chain BMS"
Date "2023-04-11"
Rev "1.1"
Comp ""
Comment1 "Designed by Edward Cheeseman"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny202-SS U2
U 1 1 618B7840
P 3950 3950
F 0 "U2" H 3421 3996 50  0000 R CNN
F 1 "ATtiny202-SS" H 3421 3905 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3950 3950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny202-402-AVR-MCU-with-Core-Independent-Peripherals_and-picoPower-40001969A.pdf" H 3950 3950 50  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 618B97D7
P 3050 3400
F 0 "C1" H 3165 3446 50  0000 L CNN
F 1 "1u" H 3165 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 3250 50  0001 C CNN
F 3 "~" H 3050 3400 50  0001 C CNN
	1    3050 3400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 618BA1FF
P 4700 4550
F 0 "Q3" H 4891 4596 50  0000 L CNN
F 1 "MMBT3904" H 4891 4505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 4475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4700 4550 50  0001 L CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT3946 Q1
U 1 1 618BBDB4
P 7000 3450
F 0 "Q1" H 7191 3496 50  0000 L CNN
F 1 "MMDT3946" H 7191 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7200 3550 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT3946 Q1
U 2 1 618BC4C5
P 6500 3200
F 0 "Q1" H 6691 3154 50  0000 L CNN
F 1 "MMDT3946" H 6691 3245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6700 3300 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 6500 3200 50  0001 C CNN
	2    6500 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 618BDBC4
P 4800 3000
F 0 "R3" H 4870 3046 50  0000 L CNN
F 1 "220k" H 4870 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 3000 50  0001 C CNN
F 3 "~" H 4800 3000 50  0001 C CNN
	1    4800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 618BE7B3
P 3950 4550
F 0 "#PWR04" H 3950 4300 50  0001 C CNN
F 1 "GND" H 3955 4377 50  0000 C CNN
F 2 "" H 3950 4550 50  0001 C CNN
F 3 "" H 3950 4550 50  0001 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 618C086B
P 4250 4550
F 0 "#PWR05" H 4250 4300 50  0001 C CNN
F 1 "GND" H 4255 4377 50  0000 C CNN
F 2 "" H 4250 4550 50  0001 C CNN
F 3 "" H 4250 4550 50  0001 C CNN
	1    4250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 618C0FB9
P 4400 4800
F 0 "R12" H 4330 4754 50  0000 R CNN
F 1 "150k" H 4330 4845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4400 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4550 4500 4550
Wire Wire Line
	4400 4550 4250 4550
Connection ~ 4400 4550
$Comp
L power:GND #PWR01
U 1 1 618C274F
P 3050 3550
F 0 "#PWR01" H 3050 3300 50  0001 C CNN
F 1 "GND" H 3055 3377 50  0000 C CNN
F 2 "" H 3050 3550 50  0001 C CNN
F 3 "" H 3050 3550 50  0001 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3150 3950 3200
Wire Wire Line
	4800 3150 4800 4150
Wire Wire Line
	4550 4150 4800 4150
Connection ~ 4800 4150
Wire Wire Line
	4800 4150 4800 4350
Wire Wire Line
	7100 3650 7100 3850
Wire Wire Line
	6600 3500 6600 3450
Wire Wire Line
	6600 2800 6600 3000
Wire Wire Line
	6800 3450 6600 3450
Text Label 4550 4150 0    50   ~ 0
RX
Text Label 4550 4050 0    50   ~ 0
TX
$Comp
L Diode:BAV99W D2
U 1 1 618D8875
P 7600 3850
F 0 "D2" V 7646 3928 50  0000 L CNN
F 1 "BAV99W" V 7555 3928 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 7600 3350 50  0001 C CNN
F 3 "" H 7600 3850 50  0001 C CNN
	1    7600 3850
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 618DBDC7
P 7600 4150
F 0 "#PWR02" H 7600 3900 50  0001 C CNN
F 1 "GND" H 7600 4000 50  0000 C CNN
F 2 "" H 7600 4150 50  0001 C CNN
F 3 "" H 7600 4150 50  0001 C CNN
	1    7600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3550 7600 2800
Wire Wire Line
	7600 2800 6600 2800
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 618DE7FD
P 8000 4400
F 0 "Q2" H 8204 4446 50  0000 L CNN
F 1 "SI3402-TP" H 8204 4355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8200 4500 50  0001 C CNN
F 3 "~" H 8000 4400 50  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 618E27D0
P 8100 4600
F 0 "#PWR03" H 8100 4350 50  0001 C CNN
F 1 "GND" H 8105 4427 50  0000 C CNN
F 2 "" H 8100 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 618E3510
P 7650 4750
F 0 "#PWR06" H 7650 4500 50  0001 C CNN
F 1 "GND" H 7655 4577 50  0000 C CNN
F 2 "" H 7650 4750 50  0001 C CNN
F 3 "" H 7650 4750 50  0001 C CNN
	1    7650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3950 4550 3950
Wire Wire Line
	5050 3550 5050 3450
Wire Wire Line
	5150 3150 5150 3450
Connection ~ 5150 3450
Wire Wire Line
	7800 4400 7650 4400
Wire Wire Line
	7650 4450 7650 4400
Connection ~ 7650 4400
Wire Wire Line
	7650 4400 7150 4400
$Comp
L Device:LED_Small D1
U 1 1 6192134A
P 5500 2950
F 0 "D1" V 5546 2882 50  0000 R CNN
F 1 "Red LED" V 5400 2950 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5500 2950 50  0001 C CNN
F 3 "~" V 5500 2950 50  0001 C CNN
	1    5500 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 619262F0
P 5500 3250
F 0 "R5" H 5430 3204 50  0000 R CNN
F 1 "3K3" H 5430 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 3250 50  0001 C CNN
F 3 "~" H 5500 3250 50  0001 C CNN
	1    5500 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3100 5500 3050
Wire Wire Line
	5500 3400 5500 3450
Wire Wire Line
	5500 3450 5850 3450
Wire Wire Line
	5850 3450 5850 3400
Wire Wire Line
	6600 3800 6600 3850
Wire Wire Line
	6600 3850 7100 3850
Wire Wire Line
	6300 3200 6150 3200
Wire Wire Line
	6150 3150 6150 3200
Wire Wire Line
	6600 2800 6150 2800
Wire Wire Line
	6150 2800 6150 2850
Connection ~ 6600 2800
Connection ~ 6150 2800
$Comp
L Device:R R7
U 1 1 6197C24F
P 8100 3500
F 0 "R7" H 8170 3546 50  0000 L CNN
F 1 "4R7" H 8170 3455 50  0000 L CNN
F 2 "EdsKicadLibrary:R_Axial_L17.0mm_D6.0mm_P22mm_Horizontal" V 8030 3500 50  0001 C CNN
F 3 "~" H 8100 3500 50  0001 C CNN
F 4 "5W" H 8170 3366 50  0000 L CNN "Field4"
	1    8100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4200 8100 3650
Wire Wire Line
	8100 3350 8100 2800
Wire Wire Line
	8100 2800 7600 2800
Connection ~ 7600 2800
Wire Wire Line
	4800 2800 4800 2850
Wire Wire Line
	4800 2800 3950 2800
Connection ~ 4800 2800
Wire Wire Line
	3050 3250 3050 3200
Wire Wire Line
	3050 3200 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	3950 3200 3950 3350
Text Label 4550 3750 0    50   ~ 0
2V5
$Comp
L Device:R R11
U 1 1 619AA0B3
P 7650 4600
F 0 "R11" H 7720 4646 50  0000 L CNN
F 1 "220k" H 7720 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 4600 50  0001 C CNN
F 3 "~" H 7650 4600 50  0001 C CNN
	1    7650 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 619AB3DF
P 5850 3250
F 0 "R6" H 5780 3204 50  0000 R CNN
F 1 "150k" H 5780 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 3250 50  0001 C CNN
F 3 "~" H 5850 3250 50  0001 C CNN
	1    5850 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 619ABCA4
P 6150 3000
F 0 "R1" H 6080 2954 50  0000 R CNN
F 1 "150k" H 6080 3045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 3000 50  0001 C CNN
F 3 "~" H 6150 3000 50  0001 C CNN
	1    6150 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 619AC147
P 6600 3650
F 0 "R8" H 6530 3604 50  0000 R CNN
F 1 "220k" H 6530 3695 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6530 3650 50  0001 C CNN
F 3 "~" H 6600 3650 50  0001 C CNN
	1    6600 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 619AC8D9
P 5150 3000
F 0 "R4" H 5080 2954 50  0000 R CNN
F 1 "3K3" H 5080 3045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
	1    5150 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 619AD1FF
P 7000 4400
F 0 "R10" V 7207 4400 50  0000 C CNN
F 1 "3K3" V 7116 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6930 4400 50  0001 C CNN
F 3 "~" H 7000 4400 50  0001 C CNN
	1    7000 4400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 619AE056
P 8100 5100
F 0 "H2" H 8200 5149 50  0000 L CNN
F 1 "(-)" H 8200 5058 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 8100 5100 50  0001 C CNN
F 3 "~" H 8100 5100 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4400 4550
Wire Wire Line
	4800 4750 4800 5000
Wire Wire Line
	4400 4950 4400 5000
Wire Wire Line
	4400 5000 4800 5000
$Comp
L power:GND #PWR07
U 1 1 619BC36A
P 8100 5200
F 0 "#PWR07" H 8100 4950 50  0001 C CNN
F 1 "GND" H 8105 5027 50  0000 C CNN
F 2 "" H 8100 5200 50  0001 C CNN
F 3 "" H 8100 5200 50  0001 C CNN
	1    8100 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 619BC9A2
P 8350 2800
F 0 "H1" V 8300 3000 50  0000 L CNN
F 1 "(+)" V 8400 3000 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 8350 2800 50  0001 C CNN
F 3 "~" H 8350 2800 50  0001 C CNN
	1    8350 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2800 8250 2800
Text Label 4550 3950 0    50   ~ 0
BAL
Wire Wire Line
	5150 2800 5150 2850
Connection ~ 5150 2800
Wire Wire Line
	5150 2800 5500 2800
Wire Wire Line
	5050 3450 5150 3450
Wire Wire Line
	5850 4050 5850 3450
Wire Wire Line
	4550 4050 5850 4050
Connection ~ 5850 3450
Wire Wire Line
	4800 2800 5150 2800
Wire Wire Line
	5500 2850 5500 2800
Connection ~ 5500 2800
Text Label 4550 3650 0    50   ~ 0
FAULT_UPDI
$Comp
L Device:R R2
U 1 1 61A26FA6
P 3950 3000
F 0 "R2" H 4020 3046 50  0000 L CNN
F 1 "10R" H 4020 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3000 50  0001 C CNN
F 3 "~" H 3950 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2800 3950 2850
Text Label 4550 3850 0    50   ~ 0
~EN
$Comp
L power:GND #PWR08
U 1 1 61A2C08F
P 4200 2550
F 0 "#PWR08" H 4200 2300 50  0001 C CNN
F 1 "GND" H 4205 2377 50  0000 C CNN
F 2 "" H 4200 2550 50  0001 C CNN
F 3 "" H 4200 2550 50  0001 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
Text Label 3550 3200 0    50   ~ 0
VCC
Text Label 4200 2350 0    50   ~ 0
VCC
Text Label 4200 2450 0    50   ~ 0
TX
Text Label 3400 2450 0    50   ~ 0
RX
Wire Wire Line
	4200 2550 4050 2550
Wire Wire Line
	3000 2350 3550 2350
Wire Wire Line
	3400 2450 3550 2450
Wire Wire Line
	4200 2450 4050 2450
Wire Wire Line
	4200 2350 4050 2350
$Comp
L Device:R R13
U 1 1 61A34BE7
P 4000 5500
F 0 "R13" V 3793 5500 50  0000 C CNN
F 1 "270k" V 3884 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 5500 50  0001 C CNN
F 3 "~" H 4000 5500 50  0001 C CNN
	1    4000 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61A3633A
P 4200 5500
F 0 "#PWR09" H 4200 5250 50  0001 C CNN
F 1 "GND" H 4205 5327 50  0000 C CNN
F 2 "" H 4200 5500 50  0001 C CNN
F 3 "" H 4200 5500 50  0001 C CNN
	1    4200 5500
	1    0    0    -1  
$EndComp
Connection ~ 6600 3450
Wire Wire Line
	6600 3450 6600 3400
Wire Wire Line
	4150 5500 4200 5500
Connection ~ 5050 3550
Wire Wire Line
	7100 3850 7400 3850
Text Label 3000 2350 0    50   ~ 0
FAULT_UPDI
Connection ~ 7100 3850
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 618FA021
P 3750 2450
F 0 "J5" H 3800 2767 50  0000 C CNN
F 1 "UPDI Port" H 3800 2676 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 3750 2450 50  0001 C CNN
F 3 "~" H 3750 2450 50  0001 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
Text Notes 3350 6550 0    50   ~ 0
1st cell initiates comms, identifying itself as cell 1. There is no cell 0. Max 255 cells.\nIt sends a frame every 5 seconds:\n[Cell#, V, MinCell#, MinV, MaxCell#, MaxV, Vtot_H, Vtot_L, CRC1, CRC2]\n\nIt knows its the first cell because it hasn’t received valid serial message in 5minutes.\nIf a cell receives a valid message it now identifies as cell received+1\n\nTo initiate a cell diagnostic message (any cell):\n  intiate a BREAK by applying a diode tester\n  RED to (-), BLACK to J3-1 or J6-1 (square pad)\n
Wire Wire Line
	6550 3850 6600 3850
Connection ~ 6600 3850
Wire Wire Line
	5050 3750 5050 3550
Wire Wire Line
	4550 3750 5050 3750
Wire Wire Line
	4550 3650 5150 3650
Wire Wire Line
	4550 3850 6250 3850
$Comp
L Device:R R9
U 1 1 619AAA79
P 6400 3850
F 0 "R9" V 6193 3850 50  0000 C CNN
F 1 "220k" V 6284 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6330 3850 50  0001 C CNN
F 3 "~" H 6400 3850 50  0001 C CNN
	1    6400 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3950 6600 4400
Wire Wire Line
	6600 4400 6850 4400
Text Notes 8000 2500 0    50   ~ 0
TX for diagnostic message
Text Notes 8000 2600 0    50   ~ 0
~FAULT~ to trigger shutoff
$Comp
L Reference_Voltage:TL431DBZ U1
U 1 1 618EB375
P 5150 3550
F 0 "U1" V 5196 3480 50  0000 R CNN
F 1 "TL431DBZ" V 5105 3480 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5150 3400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 5150 3550 50  0001 C CIN
F 4 "NOT PLACED" V 5016 3480 50  0000 R CNN "Field4"
	1    5150 3550
	0    -1   -1   0   
$EndComp
Wire Notes Line
	1450 2900 1450 4650
Wire Notes Line
	1600 2900 1600 4650
Text Notes 1300 4750 0    50   ~ 0
1
Text Notes 1450 4750 0    50   ~ 0
2
Text Notes 1600 4750 0    50   ~ 0
3
Text Notes 1300 2850 0    50   ~ 0
1
Text Notes 1450 2850 0    50   ~ 0
2
Text Notes 1600 2850 0    50   ~ 0
3
Text Notes 1600 2700 0    50   ~ 0
N/C
Text Notes 1250 2700 0    50   ~ 0
TX
Text Notes 1400 2700 0    50   ~ 0
~FLT
Text Notes 1600 4900 0    50   ~ 0
CELL1
Text Notes 1200 4900 0    50   ~ 0
RX
Text Notes 1400 4900 0    50   ~ 0
~FLT
Text Notes 1350 2400 0    50   ~ 0
CELL\nLINK\nCABLE
Text Notes 2000 2400 0    50   ~ 0
CELL 1\nSTARTER\nPLUG
Text Notes 2300 2700 0    50   ~ 0
CELL1
Text Notes 1950 2700 0    50   ~ 0
RX
Text Notes 2100 2700 0    50   ~ 0
~FLT
Text Notes 2000 2850 0    50   ~ 0
1
Text Notes 2150 2850 0    50   ~ 0
2
Text Notes 2300 2850 0    50   ~ 0
3
Wire Notes Line
	2150 3000 2300 3000
Wire Notes Line
	2300 3000 2300 2900
Wire Wire Line
	5500 2800 6150 2800
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6435E970
P 7400 2550
F 0 "J1" H 7480 2592 50  0000 L CNN
F 1 "Conn_01x03" H 7480 2501 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM03B-SRSS-TB_1x03-1MP_P1.00mm_Horizontal" H 7400 2550 50  0001 C CNN
F 3 "~" H 7400 2550 50  0001 C CNN
	1    7400 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6435FBFF
P 3400 5200
F 0 "J2" H 3318 5517 50  0000 C CNN
F 1 "Conn_01x03" H 3318 5426 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM03B-SRSS-TB_1x03-1MP_P1.00mm_Horizontal" H 3400 5200 50  0001 C CNN
F 3 "~" H 3400 5200 50  0001 C CNN
	1    3400 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3600 5300 3700 5300
Connection ~ 8100 2800
Text Notes 750  5550 0    50   ~ 0
Ladder terminator at positive end requires\nreference voltage connected to positive\nterminal (requires soldering)\nNegative end terminator only requires\nreference voltage to negative terminal if\ncomms in required
Wire Notes Line
	2000 2900 2000 3600
Wire Notes Line
	2150 3600 2150 3450
Wire Notes Line
	2150 3450 2450 3450
Wire Notes Line
	2450 3450 2450 3300
Wire Notes Line
	2500 3200 2400 3200
Wire Notes Line
	2400 3200 2400 3300
Wire Notes Line
	2400 3300 2500 3300
Wire Notes Line
	2500 3200 2500 3300
Text Notes 2000 3700 0    50   ~ 0
1
Text Notes 2150 3700 0    50   ~ 0
2
Text Notes 2400 3150 0    50   ~ 0
(-)
Text Notes 2150 3800 0    50   ~ 0
3V3
Text Notes 1950 3800 0    50   ~ 0
TX
Wire Wire Line
	7000 2450 7200 2450
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 64404655
P 7400 2100
F 0 "J3" H 7480 2092 50  0000 L CNN
F 1 "Conn_01x02" H 7480 2001 50  0000 L CNN
F 2 "EdsKicadLibrary:HY2.0mm2P_Header_Horizontal" H 7400 2100 50  0001 C CNN
F 3 "~" H 7400 2100 50  0001 C CNN
	1    7400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2450 7000 2100
Wire Wire Line
	7000 2100 7200 2100
Connection ~ 7000 2450
Wire Wire Line
	7200 2200 7100 2200
Wire Wire Line
	7100 2200 7100 2550
Wire Wire Line
	7100 2550 7200 2550
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 6440BF65
P 6450 5100
F 0 "J4" H 6530 5092 50  0000 L CNN
F 1 "Conn_01x02" H 6530 5001 50  0000 L CNN
F 2 "EdsKicadLibrary:HY2.0mm2P_Header_Horizontal" H 6450 5100 50  0001 C CNN
F 3 "~" H 6450 5100 50  0001 C CNN
	1    6450 5100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1300 2900 1300 4650
Wire Wire Line
	3700 5300 3700 5500
Wire Wire Line
	3700 5500 3850 5500
Wire Wire Line
	3600 5100 4400 5100
Wire Wire Line
	3600 5200 6150 5200
Wire Wire Line
	4400 5000 4400 5100
Connection ~ 4400 5000
Connection ~ 4400 5100
Wire Wire Line
	4400 5100 6250 5100
Wire Wire Line
	6150 3200 6150 5200
Connection ~ 6150 3200
Connection ~ 6150 5200
Wire Wire Line
	6150 5200 6250 5200
Wire Wire Line
	5850 2450 7000 2450
Wire Wire Line
	5850 2450 5850 3100
Wire Wire Line
	7100 2550 7100 3250
Connection ~ 7100 2550
Wire Notes Line
	2150 3000 2150 2900
NoConn ~ 7200 2650
NoConn ~ 3550 2550
$EndSCHEMATC

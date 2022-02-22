EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Link - for a Daisy Chain BMS"
Date "2021-11-11"
Rev "1"
Comp ""
Comment1 "Designed by Edward Cheeseman"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny202-SS U2
U 1 1 618B7840
P 3950 4150
F 0 "U2" H 3421 4196 50  0000 R CNN
F 1 "ATtiny202-SS" H 3421 4105 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3950 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny202-402-AVR-MCU-with-Core-Independent-Peripherals_and-picoPower-40001969A.pdf" H 3950 4150 50  0001 C CNN
	1    3950 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 618B97D7
P 3050 3600
F 0 "C1" H 3165 3646 50  0000 L CNN
F 1 "1u" H 3165 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 3450 50  0001 C CNN
F 3 "~" H 3050 3600 50  0001 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 618BA1FF
P 4700 4800
F 0 "Q3" H 4891 4846 50  0000 L CNN
F 1 "MMBT3904" H 4891 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 4725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4700 4800 50  0001 L CNN
	1    4700 4800
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
P 4800 3100
F 0 "R3" H 4870 3146 50  0000 L CNN
F 1 "220k" H 4870 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 3100 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 618BE7B3
P 3950 4750
F 0 "#PWR04" H 3950 4500 50  0001 C CNN
F 1 "GND" H 3955 4577 50  0000 C CNN
F 2 "" H 3950 4750 50  0001 C CNN
F 3 "" H 3950 4750 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 618C086B
P 4250 4800
F 0 "#PWR05" H 4250 4550 50  0001 C CNN
F 1 "GND" H 4255 4627 50  0000 C CNN
F 2 "" H 4250 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 618C0FB9
P 4400 5050
F 0 "R12" H 4330 5004 50  0000 R CNN
F 1 "150k" H 4330 5095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 5050 50  0001 C CNN
F 3 "~" H 4400 5050 50  0001 C CNN
	1    4400 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 4800 4500 4800
Wire Wire Line
	4400 4800 4250 4800
Connection ~ 4400 4800
$Comp
L power:GND #PWR01
U 1 1 618C274F
P 3050 3750
F 0 "#PWR01" H 3050 3500 50  0001 C CNN
F 1 "GND" H 3055 3577 50  0000 C CNN
F 2 "" H 3050 3750 50  0001 C CNN
F 3 "" H 3050 3750 50  0001 C CNN
	1    3050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3250 3950 3400
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 618C4591
P 3650 5300
F 0 "J3" H 3758 5481 50  0000 C CNN
F 1 "HY2.0 Male" H 3758 5390 50  0000 C CNN
F 2 "EdsKicadLibrary:HY2.0mm2P_Header_Horizontal" H 3650 5300 50  0001 C CNN
F 3 "~" H 3650 5300 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3250 5850 2200
Wire Wire Line
	4800 3250 4800 4350
Wire Wire Line
	4550 4350 4800 4350
Connection ~ 4800 4350
Wire Wire Line
	4800 4350 4800 4600
Wire Wire Line
	7100 3650 7100 3850
Wire Wire Line
	6600 3500 6600 3450
Wire Wire Line
	6600 2800 6600 3000
Wire Wire Line
	6150 5400 3850 5400
Wire Wire Line
	6800 3450 6600 3450
Text Label 4550 4350 0    50   ~ 0
RX
Text Label 4550 4250 0    50   ~ 0
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
Wire Wire Line
	7100 3250 7100 2350
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 618DE7FD
P 8000 4750
F 0 "Q2" H 8204 4796 50  0000 L CNN
F 1 "SI3402-TP" H 8204 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8200 4850 50  0001 C CNN
F 3 "~" H 8000 4750 50  0001 C CNN
	1    8000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 618E27D0
P 8100 4950
F 0 "#PWR03" H 8100 4700 50  0001 C CNN
F 1 "GND" H 8105 4777 50  0000 C CNN
F 2 "" H 8100 4950 50  0001 C CNN
F 3 "" H 8100 4950 50  0001 C CNN
	1    8100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 618E3510
P 7650 5100
F 0 "#PWR06" H 7650 4850 50  0001 C CNN
F 1 "GND" H 7655 4927 50  0000 C CNN
F 2 "" H 7650 5100 50  0001 C CNN
F 3 "" H 7650 5100 50  0001 C CNN
	1    7650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4750 5350 4150
Wire Wire Line
	5350 4150 4550 4150
$Comp
L Reference_Voltage:TL431DBZ U1
U 1 1 618EB375
P 5150 3650
F 0 "U1" V 5196 3580 50  0000 R CNN
F 1 "TL431DBZ" V 5105 3580 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5150 3500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 5150 3650 50  0001 C CIN
	1    5150 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3650 5050 3550
Wire Wire Line
	5150 3250 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	5600 4750 5350 4750
Wire Wire Line
	7800 4750 7650 4750
Wire Wire Line
	7650 4800 7650 4750
Connection ~ 7650 4750
Wire Wire Line
	7650 4750 5900 4750
$Comp
L Device:LED_Small D1
U 1 1 6192134A
P 5500 3050
F 0 "D1" V 5546 2982 50  0000 R CNN
F 1 "Red LED" V 5400 3050 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 5500 3050 50  0001 C CNN
F 3 "~" V 5500 3050 50  0001 C CNN
	1    5500 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 619262F0
P 5500 3400
F 0 "R5" H 5430 3354 50  0000 R CNN
F 1 "3K3" H 5430 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 3400 50  0001 C CNN
F 3 "~" H 5500 3400 50  0001 C CNN
	1    5500 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3250 5500 3150
Wire Wire Line
	5500 3550 5500 3600
Wire Wire Line
	5500 3600 5850 3600
Wire Wire Line
	5850 3600 5850 3550
Wire Wire Line
	6550 3850 6600 3850
Wire Wire Line
	6600 3800 6600 3850
Connection ~ 6600 3850
Wire Wire Line
	6600 3850 7100 3850
Wire Wire Line
	6300 3200 6150 3200
Wire Wire Line
	6150 3150 6150 3200
Connection ~ 6150 3200
Wire Wire Line
	6600 2800 6150 2800
Wire Wire Line
	6150 2800 6150 2850
Connection ~ 6600 2800
Connection ~ 6150 2800
$Comp
L Device:R R7
U 1 1 6197C24F
P 8100 3100
F 0 "R7" H 8170 3146 50  0000 L CNN
F 1 "4R7" H 8170 3055 50  0000 L CNN
F 2 "EdsKicadLibrary:R_Axial_L17.0mm_D6.0mm_P22mm_Horizontal" V 8030 3100 50  0001 C CNN
F 3 "~" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4550 8100 3250
Wire Wire Line
	8100 2950 8100 2800
Wire Wire Line
	8100 2800 7600 2800
Connection ~ 7600 2800
Wire Wire Line
	4800 2800 4800 2950
Wire Wire Line
	4800 2800 3950 2800
Connection ~ 4800 2800
Wire Wire Line
	3050 3450 3050 3400
Wire Wire Line
	3050 3400 3950 3400
Connection ~ 3950 3400
Wire Wire Line
	3950 3400 3950 3550
Text Label 4550 3950 0    50   ~ 0
2V5
$Comp
L Device:R R11
U 1 1 619AA0B3
P 7650 4950
F 0 "R11" H 7720 4996 50  0000 L CNN
F 1 "220k" H 7720 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 4950 50  0001 C CNN
F 3 "~" H 7650 4950 50  0001 C CNN
	1    7650 4950
	1    0    0    -1  
$EndComp
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
$Comp
L Device:R R6
U 1 1 619AB3DF
P 5850 3400
F 0 "R6" H 5780 3354 50  0000 R CNN
F 1 "150k" H 5780 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
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
P 5150 3100
F 0 "R4" H 5080 3054 50  0000 R CNN
F 1 "3K3" H 5080 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 3100 50  0001 C CNN
F 3 "~" H 5150 3100 50  0001 C CNN
	1    5150 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 619AD1FF
P 5750 4750
F 0 "R10" V 5957 4750 50  0000 C CNN
F 1 "3K3" V 5866 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5680 4750 50  0001 C CNN
F 3 "~" H 5750 4750 50  0001 C CNN
	1    5750 4750
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 619AE056
P 3050 4750
F 0 "H2" H 3150 4799 50  0000 L CNN
F 1 "(-)" H 3150 4708 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 3050 4750 50  0001 C CNN
F 3 "~" H 3050 4750 50  0001 C CNN
	1    3050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4900 4400 4800
Wire Wire Line
	4800 5000 4800 5300
Wire Wire Line
	4400 5200 4400 5300
Connection ~ 4400 5300
Wire Wire Line
	4400 5300 4800 5300
$Comp
L power:GND #PWR07
U 1 1 619BC36A
P 3050 4850
F 0 "#PWR07" H 3050 4600 50  0001 C CNN
F 1 "GND" H 3055 4677 50  0000 C CNN
F 2 "" H 3050 4850 50  0001 C CNN
F 3 "" H 3050 4850 50  0001 C CNN
	1    3050 4850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 619BC9A2
P 8100 2650
F 0 "H1" H 8200 2699 50  0000 L CNN
F 1 "(+)" H 8200 2608 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 8100 2650 50  0001 C CNN
F 3 "~" H 8100 2650 50  0001 C CNN
	1    8100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2750 8100 2800
Connection ~ 8100 2800
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 619BF20D
P 7650 2200
F 0 "J1" H 7678 2226 50  0000 L CNN
F 1 "Solder in Crimp" H 7678 2135 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.9mm_L10.0mm_W2.4mm_FlatFork" H 7650 2200 50  0001 C CNN
F 3 "~" H 7650 2200 50  0001 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 619C02CE
P 7650 2350
F 0 "J2" H 7678 2376 50  0000 L CNN
F 1 "Solder in Crimp" H 7678 2285 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.9mm_L10.0mm_W2.4mm_FlatFork" H 7650 2350 50  0001 C CNN
F 3 "~" H 7650 2350 50  0001 C CNN
	1    7650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2200 7450 2200
Wire Wire Line
	7100 2350 7450 2350
Text Label 4550 4150 0    50   ~ 0
BAL
Wire Wire Line
	5150 2800 5150 2950
Connection ~ 5150 2800
Wire Wire Line
	5150 2800 5500 2800
Wire Wire Line
	5050 3550 5150 3550
Wire Wire Line
	5850 4250 5850 3600
Wire Wire Line
	4550 4250 5850 4250
Connection ~ 5850 3600
Wire Wire Line
	4800 2800 5150 2800
Wire Wire Line
	5500 2950 5500 2800
Connection ~ 5500 2800
Wire Wire Line
	5500 2800 5650 2800
Text Label 4550 3850 0    50   ~ 0
FAULT_UPDI
$Comp
L Device:R R2
U 1 1 61A26FA6
P 3950 3100
F 0 "R2" H 4020 3146 50  0000 L CNN
F 1 "10R" H 4020 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 3100 50  0001 C CNN
F 3 "~" H 3950 3100 50  0001 C CNN
	1    3950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2800 3950 2950
Text Label 4550 4050 0    50   ~ 0
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
Text Label 3550 3400 0    50   ~ 0
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
P 4150 5650
F 0 "R13" V 3943 5650 50  0000 C CNN
F 1 "270k" V 4034 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 5650 50  0001 C CNN
F 3 "~" H 4150 5650 50  0001 C CNN
	1    4150 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61A3633A
P 4400 5650
F 0 "#PWR09" H 4400 5400 50  0001 C CNN
F 1 "GND" H 4405 5477 50  0000 C CNN
F 2 "" H 4400 5650 50  0001 C CNN
F 3 "" H 4400 5650 50  0001 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5650 4000 5650
Connection ~ 6600 3450
Wire Wire Line
	6600 3450 6600 3400
Wire Wire Line
	6150 3200 6150 5400
Wire Wire Line
	4300 5650 4400 5650
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 61A5E988
P 3700 5650
F 0 "J4" H 3618 5867 50  0000 C CNN
F 1 "Pad TH 1mm" H 3618 5776 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3700 5650 50  0001 C CNN
F 3 "~" H 3700 5650 50  0001 C CNN
	1    3700 5650
	-1   0    0    -1  
$EndComp
Text Notes 4550 5750 0    50   ~ 0
1st Cell:\nBridge J4-1 to J3-2\nDon’t Place HY2.0 headers
Wire Wire Line
	4550 3950 5050 3950
Wire Wire Line
	5050 3950 5050 3650
Connection ~ 5050 3650
Wire Wire Line
	7100 3850 7400 3850
Text Label 3000 2350 0    50   ~ 0
FAULT_UPDI
Wire Wire Line
	4550 4050 5150 4050
Wire Wire Line
	4550 3850 6250 3850
Wire Wire Line
	5150 3750 5150 4050
Connection ~ 7100 3850
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 618E7C76
P 3150 5300
F 0 "J6" H 3258 5481 50  0000 C CNN
F 1 "HY2.0 Male" H 3258 5390 50  0000 C CNN
F 2 "EdsKicadLibrary:HY2.0mm2P_Header_Horizontal" H 3150 5300 50  0001 C CNN
F 3 "~" H 3150 5300 50  0001 C CNN
	1    3150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5300 3850 5300
Connection ~ 3850 5300
Wire Wire Line
	3850 5300 4400 5300
Wire Wire Line
	3350 5400 3850 5400
Connection ~ 3850 5400
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
Text Notes 3150 6750 0    50   ~ 0
1st cell initiates comms, identifying itself as cell 1. There is no cell 0. Max 255 cells.\nIt sends a frame every 5 seconds:\n[Cell#, V, MinCell#, MinV, MaxCell#, MaxV, Vtot_H, Vtot_L, CRC1, CRC2]\n\nIt knows its the first cell because it hasn’t received valid serial message in 5minutes.\nIf a cell receives a valid message it now identifies as cell received+1\n\nTo initiate a cell diagnostic message (any cell):\n  intiate a BREAK by applying a diode tester\n  RED to (-), BLACK to J3-1 or J6-1 (square pad)\n
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 61A4C0B8
P 7650 2050
F 0 "J7" H 7678 2076 50  0000 L CNN
F 1 "Solder in Crimp" H 7678 1985 50  0000 L CNN
F 2 "Connector_Pin:Pin_D0.9mm_L10.0mm_W2.4mm_FlatFork" H 7650 2050 50  0001 C CNN
F 3 "~" H 7650 2050 50  0001 C CNN
	1    7650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2050 5650 2050
Wire Wire Line
	5650 2050 5650 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 6150 2800
$EndSCHEMATC

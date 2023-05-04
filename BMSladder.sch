EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Link - for a Daisy Chain BMS"
Date "2022-11-22"
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
L Transistor_BJT:MMDT3946 Q1
U 1 1 618BBDB4
P 7450 3650
F 0 "Q1" H 7641 3696 50  0000 L CNN
F 1 "MMDT3946" H 7641 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7650 3750 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 7450 3650 50  0001 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT3946 Q1
U 2 1 618BC4C5
P 6950 3200
F 0 "Q1" H 7141 3154 50  0000 L CNN
F 1 "MMDT3946" H 7141 3245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7150 3300 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 6950 3200 50  0001 C CNN
	2    6950 3200
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 618BDBC4
P 5200 3100
F 0 "R3" H 5270 3146 50  0000 L CNN
F 1 "220k" H 5270 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 3100 50  0001 C CNN
F 3 "~" H 5200 3100 50  0001 C CNN
	1    5200 3100
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
P 4700 4600
F 0 "#PWR05" H 4700 4350 50  0001 C CNN
F 1 "GND" H 4705 4427 50  0000 C CNN
F 2 "" H 4700 4600 50  0001 C CNN
F 3 "" H 4700 4600 50  0001 C CNN
	1    4700 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 618C0FB9
P 4850 4850
F 0 "R12" H 4780 4804 50  0000 R CNN
F 1 "150k" H 4780 4895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4780 4850 50  0001 C CNN
F 3 "~" H 4850 4850 50  0001 C CNN
	1    4850 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4600 4900 4600
Wire Wire Line
	4850 4600 4700 4600
Connection ~ 4850 4600
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
Wire Wire Line
	5950 3250 5950 1950
Wire Wire Line
	5200 3250 5200 4350
Wire Wire Line
	4550 4350 5200 4350
Connection ~ 5200 4350
Wire Wire Line
	5200 4350 5200 4400
Wire Wire Line
	7550 3850 7550 4050
Wire Wire Line
	7050 3700 7050 3650
Wire Wire Line
	7050 2800 7050 3000
Wire Wire Line
	7250 3650 7050 3650
Text Label 4550 4350 0    50   ~ 0
RX
Text Label 4550 4250 0    50   ~ 0
TX
$Comp
L Diode:BAV99W D2
U 1 1 618D8875
P 6750 2400
F 0 "D2" V 6796 2478 50  0000 L CNN
F 1 "BAV99W" V 6705 2478 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 2400 50  0001 C CNN
	1    6750 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3450 7550 2050
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 618DE7FD
P 8000 4600
F 0 "Q2" H 8204 4646 50  0000 L CNN
F 1 "SI3402-TP" H 8204 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8200 4700 50  0001 C CNN
F 3 "~" H 8000 4600 50  0001 C CNN
	1    8000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 618E27D0
P 8100 5000
F 0 "#PWR03" H 8100 4750 50  0001 C CNN
F 1 "GND" H 8105 4827 50  0000 C CNN
F 2 "" H 8100 5000 50  0001 C CNN
F 3 "" H 8100 5000 50  0001 C CNN
	1    8100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 618E3510
P 7650 5000
F 0 "#PWR06" H 7650 4750 50  0001 C CNN
F 1 "GND" H 7655 4827 50  0000 C CNN
F 2 "" H 7650 5000 50  0001 C CNN
F 3 "" H 7650 5000 50  0001 C CNN
	1    7650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4500 7650 4600
Wire Wire Line
	7800 4600 7650 4600
Wire Wire Line
	7650 4700 7650 4600
Connection ~ 7650 4600
$Comp
L Device:LED_Small D1
U 1 1 6192134A
P 5500 3050
F 0 "D1" V 5546 2982 50  0000 R CNN
F 1 "Red LED" V 5455 2982 50  0000 R CNN
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
	5500 3600 5950 3600
Wire Wire Line
	5950 3600 5950 3550
Wire Wire Line
	7050 4000 7050 4050
Wire Wire Line
	7050 4050 7550 4050
Wire Wire Line
	6750 3200 6550 3200
Wire Wire Line
	6550 3150 6550 3200
Connection ~ 6550 3200
Wire Wire Line
	7050 2800 6950 2800
Wire Wire Line
	6550 2800 6550 2850
Connection ~ 7050 2800
Connection ~ 6550 2800
$Comp
L Device:R R7
U 1 1 6197C24F
P 8100 3550
F 0 "R7" H 8170 3596 50  0000 L CNN
F 1 "4R7" H 8170 3505 50  0000 L CNN
F 2 "EdsKicadLibrary:R_Axial_L17.0mm_D6.0mm_P22mm_Horizontal" V 8030 3550 50  0001 C CNN
F 3 "~" H 8100 3550 50  0001 C CNN
	1    8100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4400 8100 3700
Wire Wire Line
	8100 3400 8100 2800
Wire Wire Line
	5200 2800 5200 2950
Wire Wire Line
	5200 2800 5000 2800
Connection ~ 5200 2800
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
P 7650 4850
F 0 "R11" H 7720 4896 50  0000 L CNN
F 1 "220k" H 7720 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 4850 50  0001 C CNN
F 3 "~" H 7650 4850 50  0001 C CNN
	1    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 619AAA79
P 6200 4050
F 0 "R9" V 5993 4050 50  0000 C CNN
F 1 "220k" V 6084 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6130 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 619AB3DF
P 5950 3400
F 0 "R6" H 5880 3354 50  0000 R CNN
F 1 "150k" H 5880 3445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5880 3400 50  0001 C CNN
F 3 "~" H 5950 3400 50  0001 C CNN
	1    5950 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 619ABCA4
P 6550 3000
F 0 "R1" H 6480 2954 50  0000 R CNN
F 1 "150k" H 6480 3045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6480 3000 50  0001 C CNN
F 3 "~" H 6550 3000 50  0001 C CNN
	1    6550 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 619AC147
P 7050 3850
F 0 "R8" H 6980 3804 50  0000 R CNN
F 1 "220k" H 6980 3895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 3850 50  0001 C CNN
F 3 "~" H 7050 3850 50  0001 C CNN
	1    7050 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 619AC8D9
P 5000 3100
F 0 "R4" H 4930 3054 50  0000 R CNN
F 1 "3K3" H 4930 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 3100 50  0001 C CNN
F 3 "~" H 5000 3100 50  0001 C CNN
	1    5000 3100
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 619AD1FF
P 7650 4350
F 0 "R10" H 7720 4396 50  0000 L CNN
F 1 "3K3" H 7720 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 4350 50  0001 C CNN
F 3 "~" H 7650 4350 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 619AE056
P 8400 4950
F 0 "H2" V 8354 5100 50  0000 L CNN
F 1 "(-)" V 8445 5100 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 8400 4950 50  0001 C CNN
F 3 "~" H 8400 4950 50  0001 C CNN
	1    8400 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4700 4850 4600
Wire Wire Line
	5200 4800 5200 5100
Wire Wire Line
	4850 5000 4850 5100
Connection ~ 4850 5100
Wire Wire Line
	4850 5100 5200 5100
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 619BC9A2
P 8400 2800
F 0 "H1" V 8354 2950 50  0000 L CNN
F 1 "(+)" V 8445 2950 50  0000 L CNN
F 2 "EdsKicadLibrary:Terminal tag 3.2mm slot" H 8400 2800 50  0001 C CNN
F 3 "~" H 8400 2800 50  0001 C CNN
	1    8400 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2800 8100 2800
Connection ~ 8100 2800
Wire Wire Line
	5950 1950 7800 1950
Wire Wire Line
	7550 2050 7800 2050
Text Label 4550 4150 0    50   ~ 0
BAL
Wire Wire Line
	5000 2800 5000 2950
Connection ~ 5000 2800
Wire Wire Line
	5950 4250 5950 3600
Wire Wire Line
	4550 4250 5950 4250
Connection ~ 5950 3600
Wire Wire Line
	5500 2950 5500 2800
Connection ~ 5500 2800
Wire Wire Line
	5500 2800 5650 2800
Text Label 4550 3850 0    50   ~ 0
~REFEN~_UPDI
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
FAULT
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
Connection ~ 7050 3650
Wire Wire Line
	7050 3650 7050 3400
Wire Wire Line
	6550 3200 6550 5200
Wire Wire Line
	4550 3950 5100 3950
Text Label 3000 2350 0    50   ~ 0
~REFEN~_UPDI
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 618FA021
P 3750 2450
F 0 "J3" H 3800 2767 50  0000 C CNN
F 1 "UPDI Port" H 3800 2676 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 3750 2450 50  0001 C CNN
F 3 "~" H 3750 2450 50  0001 C CNN
	1    3750 2450
	1    0    0    -1  
$EndComp
Text Notes 3250 7600 0    50   ~ 0
1st cell initiates comms, identifying itself as cell 1. There is no cell 0. Max 255 cells.\nIt sends a frame every 5 seconds:\n[Cell#, V, MinCell#, MinV, MaxCell#, MaxV, Vtot_H, Vtot_L, CRC1, CRC2]\n\nIt knows its the first cell because it hasn’t received valid serial message in 5minutes.\nIf a cell receives a valid message it now identifies as cell received+1\n\nTo initiate a cell diagnostic message (any cell):\n  intiate a BREAK by applying a diode tester\n  RED to (-), BLACK to J3-1 or J6-1 (square pad)\n
Wire Wire Line
	7800 1850 5650 1850
Wire Wire Line
	5650 1850 5650 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 6550 2800
Wire Wire Line
	3350 5100 4300 5100
Wire Wire Line
	3350 5200 6200 5200
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 637D1998
P 8000 1950
F 0 "J1" H 7972 1974 50  0000 R CNN
F 1 "HX12501-3AWB" H 7972 1883 50  0000 R CNN
F 2 "Connector_Molex:Molex_PicoBlade_53261-0371_1x03-1MP_P1.25mm_Horizontal" H 8000 1950 50  0001 C CNN
F 3 "\"./Datasheets/HX12501 1.25mm connector system.jpg\"" H 8000 1950 50  0001 C CNN
	1    8000 1950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 637E334A
P 3150 5100
F 0 "J2" H 3258 5381 50  0000 C CNN
F 1 "HX12501-3AWB" H 3258 5290 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53261-0371_1x03-1MP_P1.25mm_Horizontal" H 3150 5100 50  0001 C CNN
F 3 "\"./Datasheets/HX12501 1.25mm connector system.jpg\"" H 3150 5100 50  0001 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3850 4550 3850
Wire Wire Line
	6050 4050 4550 4050
Wire Wire Line
	7050 4050 6600 4050
Connection ~ 7050 4050
$Comp
L power:GND #PWR0101
U 1 1 637FE5EF
P 3450 5250
F 0 "#PWR0101" H 3450 5000 50  0001 C CNN
F 1 "GND" H 3455 5077 50  0000 C CNN
F 2 "" H 3450 5250 50  0001 C CNN
F 3 "" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5250 3450 5000
Wire Wire Line
	3450 5000 3350 5000
Text Notes 6250 1650 0    50   ~ 0
Note: Only connect pins 2 and 3 between cells\nDO NOT CONNECT PIN 1 BETWEEN CELLS\nPin one is for end terminators only
$Comp
L Device:R R14
U 1 1 638021C3
P 6350 5200
F 0 "R14" V 6557 5200 50  0000 C CNN
F 1 "3K3" V 6466 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 5200 50  0001 C CNN
F 3 "~" H 6350 5200 50  0001 C CNN
	1    6350 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 5200 6550 5200
$Comp
L Device:R R13
U 1 1 63802482
P 4450 5100
F 0 "R13" V 4657 5100 50  0000 C CNN
F 1 "3K3" V 4566 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 5100 50  0001 C CNN
F 3 "~" H 4450 5100 50  0001 C CNN
	1    4450 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 5100 4850 5100
Wire Wire Line
	7050 2800 8100 2800
Wire Wire Line
	6750 2700 6750 3200
Connection ~ 6750 3200
Wire Wire Line
	6950 2400 6950 2800
Connection ~ 6950 2800
Wire Wire Line
	6950 2800 6550 2800
Wire Wire Line
	6750 2100 6750 2050
Wire Wire Line
	6750 2050 7550 2050
Connection ~ 7550 2050
Wire Wire Line
	4550 4150 7650 4150
Wire Wire Line
	8100 4800 8100 4950
Wire Wire Line
	8300 4950 8100 4950
Connection ~ 8100 4950
Wire Wire Line
	8100 4950 8100 5000
Wire Wire Line
	7650 4150 7650 4200
$Comp
L Transistor_BJT:MMDT3946 Q3
U 1 1 63869C51
P 5100 4600
F 0 "Q3" H 5291 4646 50  0000 L CNN
F 1 "MMDT3946" H 5291 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5300 4700 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 5100 4600 50  0001 C CNN
	1    5100 4600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT3946 Q3
U 2 1 6386B27E
P 5900 4850
F 0 "Q3" H 6091 4804 50  0000 L CNN
F 1 "MMDT3946" H 6091 4895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6100 4950 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30123.pdf" H 5900 4850 50  0001 C CNN
	2    5900 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5800 4650 6100 4650
Wire Wire Line
	6100 4650 6100 4850
$Comp
L power:GND #PWR?
U 1 1 638762AD
P 6250 4650
F 0 "#PWR?" H 6250 4400 50  0001 C CNN
F 1 "GND" H 6255 4477 50  0000 C CNN
F 2 "" H 6250 4650 50  0001 C CNN
F 3 "" H 6250 4650 50  0001 C CNN
	1    6250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4650 6100 4650
Connection ~ 6100 4650
Wire Wire Line
	5800 5050 5800 5100
Wire Wire Line
	5800 5100 5200 5100
Connection ~ 5200 5100
Wire Wire Line
	5000 3550 5000 3850
Wire Wire Line
	5100 3450 5100 3350
Wire Wire Line
	5100 3350 5000 3350
Connection ~ 5000 3350
Wire Wire Line
	5000 3250 5000 3350
$Comp
L Reference_Voltage:TL431DBZ U1
U 1 1 618EB375
P 5000 3450
F 0 "U1" V 5046 3380 50  0000 R CNN
F 1 "TL431DBZ" V 4955 3380 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 3300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 5000 3450 50  0001 C CIN
	1    5000 3450
	0    1    -1   0   
$EndComp
Wire Wire Line
	5200 2800 5500 2800
Wire Wire Line
	5000 2800 3950 2800
Wire Wire Line
	5100 3950 5100 3450
Connection ~ 5100 3450
Text Notes 3250 6700 0    100  ~ 0
Comms functionality
Text Notes 7650 2500 0    50   ~ 0
Connector appears compatible\nwith Molex PicoBlade.\nReferred to as JST1.25mm,\nalthough JST doesn’t make\nanything like it
$Comp
L Connector:TestPoint TP1
U 1 1 6393EAFB
P 6600 3600
F 0 "TP1" H 6658 3718 50  0000 L CNN
F 1 "TestPoint" H 6658 3627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6800 3600 50  0001 C CNN
F 3 "~" H 6800 3600 50  0001 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6393F51C
P 6600 4000
F 0 "TP2" H 6658 4118 50  0000 L CNN
F 1 "TestPoint" H 6658 4027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6800 4000 50  0001 C CNN
F 3 "~" H 6800 4000 50  0001 C CNN
	1    6600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3650 7050 3650
Wire Wire Line
	6600 4000 6600 4050
Connection ~ 6600 4050
Wire Wire Line
	6600 4050 6350 4050
Wire Wire Line
	6600 3600 6600 3650
$EndSCHEMATC

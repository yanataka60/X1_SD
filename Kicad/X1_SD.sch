EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "X1_SD"
Date ""
Rev "Rev1.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J1
U 1 1 627EE89C
P 2850 2700
F 0 "J1" H 2900 3850 50  0000 C CNN
F 1 "for Card-Slot" H 2900 3950 50  0000 C CNN
F 2 "mz-2000:BUS_MZ2000" H 2850 2700 50  0001 C CNN
F 3 "~" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1800 2400 1800
Wire Wire Line
	2650 1900 2400 1900
Wire Wire Line
	2650 2000 2400 2000
Wire Wire Line
	3150 1800 3400 1800
Text Label 2450 1800 0    50   ~ 0
D2
Text Label 2450 1900 0    50   ~ 0
D1
Text Label 2450 2000 0    50   ~ 0
D0
Text Label 2450 2200 0    50   ~ 0
A15
Text Label 2450 2300 0    50   ~ 0
A14
Text Label 2450 2400 0    50   ~ 0
A13
Text Label 2450 2500 0    50   ~ 0
A12
Text Label 2450 2600 0    50   ~ 0
A11
Text Label 2450 2700 0    50   ~ 0
A10
Text Label 2450 2800 0    50   ~ 0
A9
Text Label 2450 2900 0    50   ~ 0
A8
Text Label 2450 3000 0    50   ~ 0
A7
Text Label 2450 3100 0    50   ~ 0
A6
Text Label 2450 3200 0    50   ~ 0
A5
Text Label 2450 3300 0    50   ~ 0
A4
Text Label 2450 3400 0    50   ~ 0
A3
Text Label 2450 3500 0    50   ~ 0
A2
Text Label 2450 3600 0    50   ~ 0
A1
Text Label 2450 3700 0    50   ~ 0
A0
Text Label 3150 3700 0    50   ~ 0
~MNI
Text Label 3150 3600 0    50   ~ 0
~EXWAIT
Text Label 3150 3500 0    50   ~ 0
~EXINT
Text Label 3150 3300 0    50   ~ 0
RESET
Text Label 3150 3200 0    50   ~ 0
IE0
Text Label 3150 3100 0    50   ~ 0
IE1
Text Label 3150 3000 0    50   ~ 0
~HALT
Text Label 3150 2800 0    50   ~ 0
~MREQ
Text Label 3150 2700 0    50   ~ 0
~IOREQ
Text Label 3150 2600 0    50   ~ 0
~RD
Text Label 3150 2500 0    50   ~ 0
~WR
Text Label 3150 2400 0    50   ~ 0
~M1
Text Label 3150 2300 0    50   ~ 0
phi
Text Label 3150 2200 0    50   ~ 0
D7
Text Label 3150 2100 0    50   ~ 0
D6
Text Label 3150 2000 0    50   ~ 0
D5
Text Label 3150 1900 0    50   ~ 0
D4
Text Label 3150 1800 0    50   ~ 0
D3
Wire Wire Line
	2650 2200 2400 2200
Wire Wire Line
	2650 2300 2400 2300
Wire Wire Line
	2650 2400 2400 2400
Wire Wire Line
	2650 2500 2400 2500
Wire Wire Line
	2650 2600 2400 2600
Wire Wire Line
	2650 2700 2400 2700
Wire Wire Line
	2650 2800 2400 2800
Wire Wire Line
	2650 2900 2400 2900
Wire Wire Line
	2650 3000 2400 3000
Wire Wire Line
	2650 3100 2400 3100
Wire Wire Line
	2650 3200 2400 3200
Wire Wire Line
	2650 3300 2400 3300
Wire Wire Line
	2650 3400 2400 3400
Wire Wire Line
	2650 3500 2400 3500
Wire Wire Line
	2650 3600 2400 3600
Wire Wire Line
	2650 3700 2400 3700
Wire Wire Line
	3150 1900 3400 1900
Wire Wire Line
	3150 2000 3400 2000
Wire Wire Line
	3150 2100 3400 2100
Wire Wire Line
	3150 2200 3400 2200
Wire Wire Line
	3150 2300 3400 2300
Wire Wire Line
	3150 2400 3400 2400
Wire Wire Line
	3150 2500 3400 2500
Wire Wire Line
	3150 2600 3400 2600
Wire Wire Line
	3150 2700 3400 2700
Wire Wire Line
	3150 2800 3400 2800
Wire Wire Line
	3150 3000 3400 3000
Wire Wire Line
	3150 3100 3400 3100
Wire Wire Line
	3150 3200 3400 3200
Wire Wire Line
	3150 3300 3400 3300
Wire Wire Line
	3150 3400 3400 3400
Wire Wire Line
	3150 3500 3400 3500
Wire Wire Line
	3150 3600 3400 3600
Wire Wire Line
	3150 3700 3400 3700
Text Label 3150 3400 0    50   ~ 0
~EXIO
Wire Wire Line
	1150 3800 2450 3800
Wire Wire Line
	1150 2100 1150 3800
Wire Wire Line
	1150 2100 2650 2100
$Comp
L power:GND #PWR?
U 1 1 636B8114
P 2450 3950
AR Path="/6274F952/636B8114" Ref="#PWR?"  Part="1" 
AR Path="/636B8114" Ref="#PWR04"  Part="1" 
AR Path="/636550FF/636B8114" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 2450 3700 50  0001 C CNN
F 1 "GND" H 2455 3777 50  0000 C CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2450 3800
Connection ~ 2450 3800
Wire Wire Line
	2450 3800 2650 3800
Wire Wire Line
	2450 3950 3550 3950
Wire Wire Line
	3550 3950 3550 3800
Wire Wire Line
	3550 3800 3150 3800
Connection ~ 2450 3950
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B8121
P 2950 4200
AR Path="/636550FF/636B8121" Ref="#FLG?"  Part="1" 
AR Path="/636B8121" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2950 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 4373 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "~" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3950 3550 4300
Wire Wire Line
	3550 4300 2950 4300
Wire Wire Line
	2950 4300 2950 4200
Connection ~ 3550 3950
Wire Wire Line
	3150 2900 3550 2900
Wire Wire Line
	3550 2900 3550 3800
Connection ~ 3550 3800
$Comp
L power:+5V #PWR?
U 1 1 636B8140
P 2450 1300
AR Path="/6274F952/636B8140" Ref="#PWR?"  Part="1" 
AR Path="/636B8140" Ref="#PWR03"  Part="1" 
AR Path="/636550FF/636B8140" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 2450 1150 50  0001 C CNN
F 1 "+5V" H 2465 1473 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1300 2450 1350
Wire Wire Line
	2450 1700 2650 1700
Wire Wire Line
	2450 1350 3400 1350
Wire Wire Line
	3400 1350 3400 1700
Connection ~ 2450 1350
Wire Wire Line
	2450 1350 2450 1700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B814C
P 3400 1300
AR Path="/636550FF/636B814C" Ref="#FLG?"  Part="1" 
AR Path="/636B814C" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 3400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 1473 50  0000 C CNN
F 2 "" H 3400 1300 50  0001 C CNN
F 3 "~" H 3400 1300 50  0001 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1300 3400 1350
Connection ~ 3400 1350
$Comp
L Device:CP C?
U 1 1 636B8154
P 1850 2550
AR Path="/636550FF/636B8154" Ref="C?"  Part="1" 
AR Path="/636B8154" Ref="C2"  Part="1" 
F 0 "C2" H 1700 2750 50  0000 L CNN
F 1 "100uF" H 1850 2750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1888 2400 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2400 1850 1350
Wire Wire Line
	1850 1350 2450 1350
Wire Wire Line
	1850 2700 1850 3950
Wire Wire Line
	1850 3950 2450 3950
Text Label 2450 1700 0    50   ~ 0
+5V
Text Label 2500 2100 0    50   ~ 0
GND
Text Label 2500 3800 0    50   ~ 0
GND
Text Label 3150 1700 0    50   ~ 0
+5V
Text Label 3150 2900 0    50   ~ 0
GND
Text Label 3150 3800 0    50   ~ 0
GND
Wire Wire Line
	3150 1700 3400 1700
$Comp
L 74xx:74LS30 U2
U 1 1 63A3A69C
P 6850 2300
F 0 "U2" H 6850 2825 50  0000 C CNN
F 1 "74LS30" H 6850 2734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6850 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 6850 2300 50  0001 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 63A43960
P 6400 1700
F 0 "R2" H 6470 1746 50  0000 L CNN
F 1 "1k" H 6470 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6330 1700 50  0001 C CNN
F 3 "~" H 6400 1700 50  0001 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2200 6550 2200
Wire Wire Line
	6550 2100 6400 2100
Wire Wire Line
	6400 2100 6400 2200
Wire Wire Line
	6100 2700 6550 2700
Wire Wire Line
	6100 2600 6550 2600
Wire Wire Line
	6100 2400 6550 2400
Wire Wire Line
	6100 2300 6550 2300
Wire Wire Line
	6100 2500 6550 2500
Text Label 6100 2700 0    50   ~ 0
A2
Text Label 6100 2600 0    50   ~ 0
A3
Text Label 6100 2400 0    50   ~ 0
A4
Text Label 6100 2300 0    50   ~ 0
A5
Text Label 6100 2500 0    50   ~ 0
A6
$Comp
L 74xx:74LS32 U8
U 1 1 63A6482C
P 6400 4350
F 0 "U8" H 6400 4675 50  0000 C CNN
F 1 "74LS32" H 6400 4584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6400 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
Text Label 4650 4550 0    50   ~ 0
~IOREQ
$Comp
L power:+5V #PWR017
U 1 1 63C32CEF
P 6400 1450
F 0 "#PWR017" H 6400 1300 50  0001 C CNN
F 1 "+5V" H 6415 1623 50  0000 C CNN
F 2 "" H 6400 1450 50  0001 C CNN
F 3 "" H 6400 1450 50  0001 C CNN
	1    6400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1450 6400 1550
$Comp
L 74xx:74LS30 U2
U 2 1 6494AA0B
P 2800 14950
F 0 "U2" H 3030 14996 50  0000 L CNN
F 1 "74LS30" H 3030 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2800 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 2800 14950 50  0001 C CNN
	2    2800 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U5
U 5 1 649A66E9
P 3850 14950
F 0 "U5" H 4080 14996 50  0000 L CNN
F 1 "74LS32" H 4080 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3850 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3850 14950 50  0001 C CNN
	5    3850 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 1 1 649E1AF5
P 14050 9650
F 0 "U1" H 14050 9967 50  0000 C CNN
F 1 "74LS04" H 14050 9876 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 9650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14050 9650 50  0001 C CNN
	1    14050 9650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 2 1 649E7A3F
P 14050 10200
F 0 "U1" H 14050 10517 50  0000 C CNN
F 1 "74LS04" H 14050 10426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 10200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14050 10200 50  0001 C CNN
	2    14050 10200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 4 1 649EF6C9
P 6050 5100
F 0 "U1" H 6050 5417 50  0000 C CNN
F 1 "74LS04" H 6050 5326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6050 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6050 5100 50  0001 C CNN
	4    6050 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 649F10F9
P 6900 3500
F 0 "U1" H 6900 3817 50  0000 C CNN
F 1 "74LS04" H 6900 3726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6900 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6900 3500 50  0001 C CNN
	5    6900 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 649F26BC
P 8450 3500
F 0 "U1" H 8450 3817 50  0000 C CNN
F 1 "74LS04" H 8450 3726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8450 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8450 3500 50  0001 C CNN
	6    8450 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 649F43D9
P 1750 14950
F 0 "U1" H 1980 14996 50  0000 L CNN
F 1 "74LS04" H 1980 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1750 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1750 14950 50  0001 C CNN
	7    1750 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U4
U 1 1 64A99C95
P 2950 8600
F 0 "U4" H 2950 8925 50  0000 C CNN
F 1 "74LS27" H 2950 8834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2950 8600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 2950 8600 50  0001 C CNN
	1    2950 8600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U7
U 2 1 64A9DD40
P 6150 3500
F 0 "U7" H 6150 3825 50  0000 C CNN
F 1 "74LS27" H 6150 3734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6150 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 6150 3500 50  0001 C CNN
	2    6150 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U7
U 3 1 64A9FC4E
P 7700 3500
F 0 "U7" H 7700 3825 50  0000 C CNN
F 1 "74LS27" H 7700 3734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7700 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 7700 3500 50  0001 C CNN
	3    7700 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U4
U 4 1 64AA9F6E
P 4900 14950
F 0 "U4" H 5130 14996 50  0000 L CNN
F 1 "74LS27" H 5130 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4900 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 4900 14950 50  0001 C CNN
	4    4900 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3500 8150 3500
Wire Wire Line
	6450 3500 6600 3500
$Comp
L 74xx:74LS32 U5
U 2 1 64EAB93A
P 5300 2900
F 0 "U5" H 5300 3225 50  0000 C CNN
F 1 "74LS32" H 5300 3134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5300 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5300 2900 50  0001 C CNN
	2    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U5
U 3 1 64EAD6C5
P 5300 3500
F 0 "U5" H 5300 3825 50  0000 C CNN
F 1 "74LS32" H 5300 3734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5300 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5300 3500 50  0001 C CNN
	3    5300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4250 6100 4250
Wire Wire Line
	7300 3400 7400 3400
Wire Wire Line
	6400 1850 6400 2000
Connection ~ 6400 2100
Wire Wire Line
	6550 2000 6400 2000
Connection ~ 6400 2000
Wire Wire Line
	6400 2000 6400 2100
Wire Wire Line
	7150 2300 7300 2300
Wire Wire Line
	7300 2300 7300 3400
Wire Wire Line
	5000 2800 4650 2800
Wire Wire Line
	5000 3000 4650 3000
Wire Wire Line
	5000 3400 4650 3400
Wire Wire Line
	5000 3600 4650 3600
Text Label 4650 2800 0    50   ~ 0
A7
Text Label 4650 3000 0    50   ~ 0
A8
Text Label 4650 3400 0    50   ~ 0
A9
Text Label 4650 3600 0    50   ~ 0
A10
Wire Wire Line
	5600 3500 5850 3500
Wire Wire Line
	5600 2900 5700 2900
Wire Wire Line
	5700 2900 5700 3400
Wire Wire Line
	5700 3400 5850 3400
Wire Wire Line
	5850 3600 5700 3600
Wire Wire Line
	5700 3600 5700 3800
Wire Wire Line
	5700 3800 4650 3800
Text Label 4650 3800 0    50   ~ 0
A11
Text Label 4650 4250 0    50   ~ 0
~EXIO
Wire Wire Line
	4650 4550 5950 4550
Wire Wire Line
	5950 4450 5950 4550
Wire Wire Line
	5950 4450 6100 4450
Wire Wire Line
	6700 4350 7150 4350
Wire Wire Line
	7150 4350 7150 3600
Wire Wire Line
	7150 3600 7400 3600
Wire Wire Line
	5750 5100 5350 5100
Text Label 4650 5100 0    50   ~ 0
RESET
$Comp
L power:+5V #PWR01
U 1 1 67E10588
P 1750 14250
F 0 "#PWR01" H 1750 14100 50  0001 C CNN
F 1 "+5V" H 1765 14423 50  0000 C CNN
F 2 "" H 1750 14250 50  0001 C CNN
F 3 "" H 1750 14250 50  0001 C CNN
	1    1750 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 67E45A4D
P 2800 14250
F 0 "#PWR05" H 2800 14100 50  0001 C CNN
F 1 "+5V" H 2815 14423 50  0000 C CNN
F 2 "" H 2800 14250 50  0001 C CNN
F 3 "" H 2800 14250 50  0001 C CNN
	1    2800 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 67E7B052
P 3850 14250
F 0 "#PWR09" H 3850 14100 50  0001 C CNN
F 1 "+5V" H 3865 14423 50  0000 C CNN
F 2 "" H 3850 14250 50  0001 C CNN
F 3 "" H 3850 14250 50  0001 C CNN
	1    3850 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 67EB0512
P 4900 14250
F 0 "#PWR013" H 4900 14100 50  0001 C CNN
F 1 "+5V" H 4915 14423 50  0000 C CNN
F 2 "" H 4900 14250 50  0001 C CNN
F 3 "" H 4900 14250 50  0001 C CNN
	1    4900 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 67F1AE10
P 5950 14250
F 0 "#PWR015" H 5950 14100 50  0001 C CNN
F 1 "+5V" H 5965 14423 50  0000 C CNN
F 2 "" H 5950 14250 50  0001 C CNN
F 3 "" H 5950 14250 50  0001 C CNN
	1    5950 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 67F502CF
P 7000 14250
F 0 "#PWR018" H 7000 14100 50  0001 C CNN
F 1 "+5V" H 7015 14423 50  0000 C CNN
F 2 "" H 7000 14250 50  0001 C CNN
F 3 "" H 7000 14250 50  0001 C CNN
	1    7000 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 67F857EA
P 8100 14250
F 0 "#PWR022" H 8100 14100 50  0001 C CNN
F 1 "+5V" H 8115 14423 50  0000 C CNN
F 2 "" H 8100 14250 50  0001 C CNN
F 3 "" H 8100 14250 50  0001 C CNN
	1    8100 14250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 67FBACD4
P 9200 14250
F 0 "#PWR024" H 9200 14100 50  0001 C CNN
F 1 "+5V" H 9215 14423 50  0000 C CNN
F 2 "" H 9200 14250 50  0001 C CNN
F 3 "" H 9200 14250 50  0001 C CNN
	1    9200 14250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 686CDDBB
P 1450 14950
F 0 "C1" H 1250 15050 50  0000 L CNN
F 1 "0.1uF" H 1250 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1488 14800 50  0001 C CNN
F 3 "~" H 1450 14950 50  0001 C CNN
	1    1450 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 686DCEB2
P 2500 14950
F 0 "C3" H 2300 15050 50  0000 L CNN
F 1 "0.1uF" H 2300 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2538 14800 50  0001 C CNN
F 3 "~" H 2500 14950 50  0001 C CNN
	1    2500 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6875B982
P 3550 14950
F 0 "C4" H 3350 15050 50  0000 L CNN
F 1 "0.1uF" H 3350 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3588 14800 50  0001 C CNN
F 3 "~" H 3550 14950 50  0001 C CNN
	1    3550 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 687916AE
P 4600 14950
F 0 "C5" H 4400 15050 50  0000 L CNN
F 1 "0.1uF" H 4400 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4638 14800 50  0001 C CNN
F 3 "~" H 4600 14950 50  0001 C CNN
	1    4600 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 68957BA3
P 5650 14950
F 0 "C7" H 5450 15050 50  0000 L CNN
F 1 "0.1uF" H 5450 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5688 14800 50  0001 C CNN
F 3 "~" H 5650 14950 50  0001 C CNN
	1    5650 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 68A1FDC7
P 6700 14950
F 0 "C8" H 6500 15050 50  0000 L CNN
F 1 "0.1uF" H 6500 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6738 14800 50  0001 C CNN
F 3 "~" H 6700 14950 50  0001 C CNN
	1    6700 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 68AE8378
P 7800 14950
F 0 "C10" H 7600 15050 50  0000 L CNN
F 1 "0.1uF" H 7600 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7838 14800 50  0001 C CNN
F 3 "~" H 7800 14950 50  0001 C CNN
	1    7800 14950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 68B79120
P 8900 14950
F 0 "C11" H 8700 15050 50  0000 L CNN
F 1 "0.1uF" H 8700 14850 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8938 14800 50  0001 C CNN
F 3 "~" H 8900 14950 50  0001 C CNN
	1    8900 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 14250 1750 14350
Wire Wire Line
	2800 14250 2800 14350
Wire Wire Line
	3850 14250 3850 14350
Wire Wire Line
	4900 14250 4900 14350
Wire Wire Line
	5950 14250 5950 14350
Wire Wire Line
	7000 14250 7000 14350
Wire Wire Line
	8100 14250 8100 14350
Wire Wire Line
	9200 14250 9200 14350
Wire Wire Line
	8900 14800 8900 14350
Wire Wire Line
	8900 14350 9200 14350
Connection ~ 9200 14350
Wire Wire Line
	9200 14350 9200 14450
Wire Wire Line
	7800 14800 7800 14350
Wire Wire Line
	7800 14350 8100 14350
Connection ~ 8100 14350
Wire Wire Line
	8100 14350 8100 14450
Wire Wire Line
	6700 14800 6700 14350
Wire Wire Line
	6700 14350 7000 14350
Connection ~ 7000 14350
Wire Wire Line
	7000 14350 7000 14450
Wire Wire Line
	5650 14800 5650 14350
Wire Wire Line
	5650 14350 5950 14350
Connection ~ 5950 14350
Wire Wire Line
	5950 14350 5950 14450
Wire Wire Line
	4600 14800 4600 14350
Wire Wire Line
	4600 14350 4900 14350
Connection ~ 4900 14350
Wire Wire Line
	4900 14350 4900 14450
Wire Wire Line
	3550 14800 3550 14350
Wire Wire Line
	3550 14350 3850 14350
Connection ~ 3850 14350
Wire Wire Line
	3850 14350 3850 14450
Wire Wire Line
	2500 14800 2500 14350
Wire Wire Line
	2500 14350 2800 14350
Connection ~ 2800 14350
Wire Wire Line
	2800 14350 2800 14450
Wire Wire Line
	1450 14800 1450 14350
Wire Wire Line
	1450 14350 1750 14350
Connection ~ 1750 14350
Wire Wire Line
	1750 14350 1750 14450
Wire Wire Line
	1450 15100 1450 15550
Wire Wire Line
	1450 15550 1750 15550
Wire Wire Line
	1750 15550 1750 15450
$Comp
L power:GND #PWR?
U 1 1 69412F52
P 1750 15550
AR Path="/6274F952/69412F52" Ref="#PWR?"  Part="1" 
AR Path="/69412F52" Ref="#PWR02"  Part="1" 
AR Path="/636550FF/69412F52" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1750 15300 50  0001 C CNN
F 1 "GND" H 1755 15377 50  0000 C CNN
F 2 "" H 1750 15550 50  0001 C CNN
F 3 "" H 1750 15550 50  0001 C CNN
	1    1750 15550
	1    0    0    -1  
$EndComp
Connection ~ 1750 15550
Wire Wire Line
	2500 15100 2500 15550
Wire Wire Line
	2500 15550 2800 15550
Wire Wire Line
	2800 15550 2800 15450
$Comp
L power:GND #PWR?
U 1 1 694B11B7
P 2800 15550
AR Path="/6274F952/694B11B7" Ref="#PWR?"  Part="1" 
AR Path="/694B11B7" Ref="#PWR06"  Part="1" 
AR Path="/636550FF/694B11B7" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 2800 15300 50  0001 C CNN
F 1 "GND" H 2805 15377 50  0000 C CNN
F 2 "" H 2800 15550 50  0001 C CNN
F 3 "" H 2800 15550 50  0001 C CNN
	1    2800 15550
	1    0    0    -1  
$EndComp
Connection ~ 2800 15550
Wire Wire Line
	3550 15100 3550 15550
Wire Wire Line
	3550 15550 3850 15550
Wire Wire Line
	3850 15550 3850 15450
$Comp
L power:GND #PWR?
U 1 1 694F441D
P 3850 15550
AR Path="/6274F952/694F441D" Ref="#PWR?"  Part="1" 
AR Path="/694F441D" Ref="#PWR010"  Part="1" 
AR Path="/636550FF/694F441D" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 3850 15300 50  0001 C CNN
F 1 "GND" H 3855 15377 50  0000 C CNN
F 2 "" H 3850 15550 50  0001 C CNN
F 3 "" H 3850 15550 50  0001 C CNN
	1    3850 15550
	1    0    0    -1  
$EndComp
Connection ~ 3850 15550
Wire Wire Line
	4600 15100 4600 15550
Wire Wire Line
	4600 15550 4900 15550
Wire Wire Line
	4900 15550 4900 15450
$Comp
L power:GND #PWR?
U 1 1 69537DE3
P 4900 15550
AR Path="/6274F952/69537DE3" Ref="#PWR?"  Part="1" 
AR Path="/69537DE3" Ref="#PWR014"  Part="1" 
AR Path="/636550FF/69537DE3" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 4900 15300 50  0001 C CNN
F 1 "GND" H 4905 15377 50  0000 C CNN
F 2 "" H 4900 15550 50  0001 C CNN
F 3 "" H 4900 15550 50  0001 C CNN
	1    4900 15550
	1    0    0    -1  
$EndComp
Connection ~ 4900 15550
Wire Wire Line
	5650 15100 5650 15550
Wire Wire Line
	5650 15550 5950 15550
Wire Wire Line
	5950 15550 5950 15450
$Comp
L power:GND #PWR?
U 1 1 695C21E2
P 5950 15550
AR Path="/6274F952/695C21E2" Ref="#PWR?"  Part="1" 
AR Path="/695C21E2" Ref="#PWR016"  Part="1" 
AR Path="/636550FF/695C21E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 5950 15300 50  0001 C CNN
F 1 "GND" H 5955 15377 50  0000 C CNN
F 2 "" H 5950 15550 50  0001 C CNN
F 3 "" H 5950 15550 50  0001 C CNN
	1    5950 15550
	1    0    0    -1  
$EndComp
Connection ~ 5950 15550
Wire Wire Line
	6700 15100 6700 15550
Wire Wire Line
	6700 15550 7000 15550
Wire Wire Line
	7000 15550 7000 15450
$Comp
L power:GND #PWR?
U 1 1 69608BFA
P 7000 15550
AR Path="/6274F952/69608BFA" Ref="#PWR?"  Part="1" 
AR Path="/69608BFA" Ref="#PWR019"  Part="1" 
AR Path="/636550FF/69608BFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 7000 15300 50  0001 C CNN
F 1 "GND" H 7005 15377 50  0000 C CNN
F 2 "" H 7000 15550 50  0001 C CNN
F 3 "" H 7000 15550 50  0001 C CNN
	1    7000 15550
	1    0    0    -1  
$EndComp
Connection ~ 7000 15550
Wire Wire Line
	7800 15100 7800 15550
Wire Wire Line
	7800 15550 8100 15550
Wire Wire Line
	8100 15550 8100 15450
$Comp
L power:GND #PWR?
U 1 1 6964FDB5
P 8100 15550
AR Path="/6274F952/6964FDB5" Ref="#PWR?"  Part="1" 
AR Path="/6964FDB5" Ref="#PWR023"  Part="1" 
AR Path="/636550FF/6964FDB5" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 8100 15300 50  0001 C CNN
F 1 "GND" H 8105 15377 50  0000 C CNN
F 2 "" H 8100 15550 50  0001 C CNN
F 3 "" H 8100 15550 50  0001 C CNN
	1    8100 15550
	1    0    0    -1  
$EndComp
Connection ~ 8100 15550
Wire Wire Line
	8900 15100 8900 15550
Wire Wire Line
	8900 15550 9200 15550
Wire Wire Line
	9200 15550 9200 15450
$Comp
L power:GND #PWR?
U 1 1 69902759
P 9200 15550
AR Path="/6274F952/69902759" Ref="#PWR?"  Part="1" 
AR Path="/69902759" Ref="#PWR025"  Part="1" 
AR Path="/636550FF/69902759" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 9200 15300 50  0001 C CNN
F 1 "GND" H 9205 15377 50  0000 C CNN
F 2 "" H 9200 15550 50  0001 C CNN
F 3 "" H 9200 15550 50  0001 C CNN
	1    9200 15550
	1    0    0    -1  
$EndComp
Connection ~ 9200 15550
Wire Wire Line
	13750 9650 13600 9650
Wire Wire Line
	13600 9650 13600 10200
Wire Wire Line
	13750 10200 13600 10200
$Comp
L power:GND #PWR?
U 1 1 6A3563C0
P 13600 13350
AR Path="/6274F952/6A3563C0" Ref="#PWR?"  Part="1" 
AR Path="/6A3563C0" Ref="#PWR034"  Part="1" 
AR Path="/636550FF/6A3563C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 13600 13100 50  0001 C CNN
F 1 "GND" H 13605 13177 50  0000 C CNN
F 2 "" H 13600 13350 50  0001 C CNN
F 3 "" H 13600 13350 50  0001 C CNN
	1    13600 13350
	1    0    0    -1  
$EndComp
NoConn ~ 14350 9650
NoConn ~ 14350 10200
Wire Wire Line
	7200 3500 7400 3500
Wire Wire Line
	8750 3500 10250 3500
Wire Wire Line
	5350 5100 5350 4650
Wire Wire Line
	5350 4650 8950 4650
Wire Wire Line
	8950 4650 8950 3200
Wire Wire Line
	8950 3200 10250 3200
Connection ~ 5350 5100
Wire Wire Line
	5350 5100 4650 5100
Wire Wire Line
	10250 3600 9850 3600
Wire Wire Line
	10250 3700 9850 3700
Text Label 9850 3600 0    50   ~ 0
~RD
Text Label 9850 3700 0    50   ~ 0
~WR
Wire Wire Line
	10250 4000 9850 4000
Wire Wire Line
	10250 4100 9850 4100
Wire Wire Line
	10250 4400 9850 4400
Wire Wire Line
	10250 4500 9850 4500
Wire Wire Line
	10250 4600 9850 4600
Wire Wire Line
	10250 4700 9850 4700
Wire Wire Line
	10250 4800 9850 4800
Wire Wire Line
	10250 4900 9850 4900
Wire Wire Line
	10250 5000 9850 5000
Wire Wire Line
	10250 5100 9850 5100
Text Label 9850 4000 0    50   ~ 0
A0
Text Label 9850 4100 0    50   ~ 0
A1
Text Label 9850 4400 0    50   ~ 0
D0
Text Label 9850 4500 0    50   ~ 0
D1
Text Label 9850 4600 0    50   ~ 0
D2
Text Label 9850 4700 0    50   ~ 0
D3
Text Label 9850 4800 0    50   ~ 0
D4
Text Label 9850 4900 0    50   ~ 0
D5
Text Label 9850 5000 0    50   ~ 0
D6
Text Label 9850 5100 0    50   ~ 0
D7
$Comp
L Arduino:Arduino_Pro_Mini U?
U 1 1 64E98BF0
P 12750 4300
AR Path="/636550FF/64E98BF0" Ref="U?"  Part="1" 
AR Path="/64E98BF0" Ref="U14"  Part="1" 
AR Path="/64DF955F/64E98BF0" Ref="U?"  Part="1" 
F 0 "U14" H 12750 5189 60  0000 C CNN
F 1 "Arduino_Pro_Mini_5V" H 12750 5083 60  0000 C CNN
F 2 "MZ-2000_SD_3_2:Arduino_Pro_Mini" H 13550 3550 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 12950 3100 60  0001 C CNN
	1    12750 4300
	1    0    0    -1  
$EndComp
$Comp
L Interface:8255 U?
U 1 1 64E98BF7
P 10950 4500
AR Path="/636550FF/64E98BF7" Ref="U?"  Part="1" 
AR Path="/64E98BF7" Ref="U12"  Part="1" 
AR Path="/64DF955F/64E98BF7" Ref="U?"  Part="1" 
F 0 "U12" H 10550 6000 50  0000 C CNN
F 1 "8255" H 11350 6000 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_LongPads" H 10950 4800 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 10950 4800 50  0001 C CNN
	1    10950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E98BFF
P 10450 6150
AR Path="/636550FF/64E98BFF" Ref="C?"  Part="1" 
AR Path="/64E98BFF" Ref="C12"  Part="1" 
AR Path="/64DF955F/64E98BFF" Ref="C?"  Part="1" 
F 0 "C12" V 10300 6250 50  0000 C CNN
F 1 "0.1uF" V 10300 6000 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10488 6000 50  0001 C CNN
F 3 "~" H 10450 6150 50  0001 C CNN
	1    10450 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64E98C05
P 10950 6200
AR Path="/636550FF/64E98C05" Ref="#PWR?"  Part="1" 
AR Path="/64E98C05" Ref="#PWR029"  Part="1" 
AR Path="/64DF955F/64E98C05" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 10950 5950 50  0001 C CNN
F 1 "GND" H 10955 6027 50  0000 C CNN
F 2 "" H 10950 6200 50  0001 C CNN
F 3 "" H 10950 6200 50  0001 C CNN
	1    10950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 6150 10950 6150
Wire Wire Line
	10950 6150 10950 6200
Wire Wire Line
	10950 6100 10950 6150
Connection ~ 10950 6150
Wire Wire Line
	10300 6150 10200 6150
Wire Wire Line
	10200 6150 10200 2900
Wire Wire Line
	10200 2900 10950 2900
$Comp
L power:+5V #PWR?
U 1 1 64E98C12
P 10950 2900
AR Path="/636550FF/64E98C12" Ref="#PWR?"  Part="1" 
AR Path="/64E98C12" Ref="#PWR028"  Part="1" 
AR Path="/64DF955F/64E98C12" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 10950 2750 50  0001 C CNN
F 1 "+5V" H 10965 3073 50  0000 C CNN
F 2 "" H 10950 2900 50  0001 C CNN
F 3 "" H 10950 2900 50  0001 C CNN
	1    10950 2900
	1    0    0    -1  
$EndComp
Connection ~ 10950 2900
Wire Wire Line
	11650 4800 12150 4800
Wire Wire Line
	11650 4700 12150 4700
Wire Wire Line
	11650 4300 12150 4300
Wire Wire Line
	11650 4200 12150 4200
Wire Wire Line
	11650 4100 12150 4100
Wire Wire Line
	11650 5700 13700 5700
Wire Wire Line
	13700 5700 13700 4400
Wire Wire Line
	13700 4400 13350 4400
Wire Wire Line
	11650 5200 11800 5200
Wire Wire Line
	11800 5200 11800 5800
Wire Wire Line
	11800 5800 13800 5800
Wire Wire Line
	13800 5800 13800 4300
Wire Wire Line
	13800 4300 13350 4300
Wire Wire Line
	11650 3200 13800 3200
Wire Wire Line
	13800 3200 13800 4200
Wire Wire Line
	13800 4200 13350 4200
Wire Wire Line
	11650 3300 13700 3300
Wire Wire Line
	13700 3300 13700 4100
Wire Wire Line
	13700 4100 13350 4100
Wire Wire Line
	11650 3400 11950 3400
Wire Wire Line
	11950 3400 11950 5300
Wire Wire Line
	11950 5300 12850 5300
Wire Wire Line
	12850 5300 12850 5200
Wire Wire Line
	11650 3500 11900 3500
Wire Wire Line
	11900 3500 11900 5400
Wire Wire Line
	11900 5400 12950 5400
Wire Wire Line
	12950 5400 12950 5200
$Comp
L power:GND #PWR?
U 1 1 64E98C34
P 13450 5000
AR Path="/636550FF/64E98C34" Ref="#PWR?"  Part="1" 
AR Path="/64E98C34" Ref="#PWR032"  Part="1" 
AR Path="/64DF955F/64E98C34" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 13450 4750 50  0001 C CNN
F 1 "GND" H 13455 4827 50  0000 C CNN
F 2 "" H 13450 5000 50  0001 C CNN
F 3 "" H 13450 5000 50  0001 C CNN
	1    13450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 3800 13450 3800
Wire Wire Line
	13450 3800 13450 5000
$Comp
L power:+5V #PWR?
U 1 1 64E98C3C
P 13550 3700
AR Path="/636550FF/64E98C3C" Ref="#PWR?"  Part="1" 
AR Path="/64E98C3C" Ref="#PWR033"  Part="1" 
AR Path="/64DF955F/64E98C3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 13550 3550 50  0001 C CNN
F 1 "+5V" H 13565 3873 50  0000 C CNN
F 2 "" H 13550 3700 50  0001 C CNN
F 3 "" H 13550 3700 50  0001 C CNN
	1    13550 3700
	1    0    0    -1  
$EndComp
NoConn ~ 11650 3600
NoConn ~ 11650 3700
NoConn ~ 11650 3800
NoConn ~ 11650 3900
NoConn ~ 11650 5000
NoConn ~ 11650 5100
NoConn ~ 11650 5300
NoConn ~ 11650 5400
NoConn ~ 11650 5500
NoConn ~ 11650 5600
Wire Wire Line
	13350 4500 14100 4500
Wire Wire Line
	13350 4600 14100 4600
Wire Wire Line
	13350 4700 14100 4700
Wire Wire Line
	13350 4800 14100 4800
NoConn ~ 14100 4200
NoConn ~ 14100 4300
NoConn ~ 14100 4900
$Comp
L power:+5V #PWR?
U 1 1 64E98C53
P 13950 3950
AR Path="/636550FF/64E98C53" Ref="#PWR?"  Part="1" 
AR Path="/64E98C53" Ref="#PWR035"  Part="1" 
AR Path="/64DF955F/64E98C53" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 13950 3800 50  0001 C CNN
F 1 "+5V" H 13965 4123 50  0000 C CNN
F 2 "" H 13950 3950 50  0001 C CNN
F 3 "" H 13950 3950 50  0001 C CNN
	1    13950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 3950 13950 4100
Wire Wire Line
	13950 4100 14100 4100
$Comp
L power:GND #PWR?
U 1 1 64E98C5B
P 13950 5050
AR Path="/636550FF/64E98C5B" Ref="#PWR?"  Part="1" 
AR Path="/64E98C5B" Ref="#PWR036"  Part="1" 
AR Path="/64DF955F/64E98C5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 13950 4800 50  0001 C CNN
F 1 "GND" H 13955 4877 50  0000 C CNN
F 2 "" H 13950 5050 50  0001 C CNN
F 3 "" H 13950 5050 50  0001 C CNN
	1    13950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 4400 13950 4400
Wire Wire Line
	13950 4400 13950 5050
NoConn ~ 13350 3700
NoConn ~ 13350 3900
NoConn ~ 12750 5200
NoConn ~ 12650 5200
NoConn ~ 12150 4000
NoConn ~ 12150 3800
NoConn ~ 12150 3700
Wire Wire Line
	13350 4000 13550 4000
Wire Wire Line
	13550 4000 13550 3700
$Comp
L Memory_RAM2:Micro_SD_Card_Kit J?
U 1 1 64E98C6C
P 15000 4400
AR Path="/636550FF/64E98C6C" Ref="J?"  Part="1" 
AR Path="/64E98C6C" Ref="J2"  Part="1" 
AR Path="/64DF955F/64E98C6C" Ref="J?"  Part="1" 
F 0 "J2" H 15830 4396 50  0000 L CNN
F 1 "Micro_SD_Card_Kit" H 15830 4305 50  0000 L CNN
F 2 "MZ-2000_SD_3_2:AE-microSD-LLCNV" H 16150 4700 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 15000 4400 50  0001 C CNN
	1    15000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 3900 12150 3900
Text Label 13900 4500 0    50   ~ 0
SCK
Text Label 13900 4600 0    50   ~ 0
MISO
Text Label 13900 4700 0    50   ~ 0
MOSI
Text Label 13900 4800 0    50   ~ 0
CS
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 64E98C77
P 15000 5650
AR Path="/636550FF/64E98C77" Ref="J?"  Part="1" 
AR Path="/64E98C77" Ref="J3"  Part="1" 
AR Path="/64DF955F/64E98C77" Ref="J?"  Part="1" 
F 0 "J3" H 15080 5642 50  0000 L CNN
F 1 "MicroSD Card Adapter" H 14600 5150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 15000 5650 50  0001 C CNN
F 3 "~" H 15000 5650 50  0001 C CNN
	1    15000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 5450 14600 5450
Wire Wire Line
	14800 5550 14600 5550
Wire Wire Line
	14800 5650 14600 5650
Wire Wire Line
	14800 5750 14600 5750
Wire Wire Line
	14800 5850 14600 5850
Wire Wire Line
	14800 5950 14600 5950
Text Label 14600 5450 0    50   ~ 0
GND
Text Label 14600 5550 0    50   ~ 0
+5V
Text Label 14600 5650 0    50   ~ 0
MISO
Text Label 14600 5750 0    50   ~ 0
MOSI
Text Label 14600 5850 0    50   ~ 0
SCK
Text Label 14600 5950 0    50   ~ 0
CS
Wire Wire Line
	12050 2550 12050 3900
Wire Wire Line
	11650 4600 12150 4600
Wire Wire Line
	11650 4500 12150 4500
Wire Wire Line
	11650 4400 12150 4400
Wire Wire Line
	12050 2550 9100 2550
Wire Wire Line
	9100 2550 9100 5100
Wire Wire Line
	6350 5100 9100 5100
$Comp
L 74xx:74LS10 U3
U 2 1 650AE1CA
P 2950 7650
F 0 "U3" H 2950 7975 50  0000 C CNN
F 1 "74LS10" H 2950 7884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2950 7650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 2950 7650 50  0001 C CNN
	2    2950 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 7550 2650 7550
Wire Wire Line
	2400 7650 2650 7650
Wire Wire Line
	2400 7750 2650 7750
Text Label 2400 7550 0    50   ~ 0
A10
Text Label 2400 7650 0    50   ~ 0
A9
Text Label 2400 7750 0    50   ~ 0
A11
Wire Wire Line
	3250 7650 3650 7650
$Comp
L power:GND #PWR?
U 1 1 652B5307
P 3450 7800
AR Path="/6274F952/652B5307" Ref="#PWR?"  Part="1" 
AR Path="/652B5307" Ref="#PWR08"  Part="1" 
AR Path="/636550FF/652B5307" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 3450 7550 50  0001 C CNN
F 1 "GND" H 3455 7627 50  0000 C CNN
F 2 "" H 3450 7800 50  0001 C CNN
F 3 "" H 3450 7800 50  0001 C CNN
	1    3450 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7750 3450 7750
Wire Wire Line
	3450 7750 3450 7800
Wire Wire Line
	3650 7550 3400 7550
Text Label 3400 7550 0    50   ~ 0
A8
$Comp
L 74xx:74LS10 U3
U 3 1 65326900
P 5150 8500
F 0 "U3" H 5150 8825 50  0000 C CNN
F 1 "74LS10" H 5150 8734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5150 8500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 5150 8500 50  0001 C CNN
	3    5150 8500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U4
U 2 1 653420BD
P 2950 9250
F 0 "U4" H 2950 9575 50  0000 C CNN
F 1 "74LS27" H 2950 9484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2950 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 2950 9250 50  0001 C CNN
	2    2950 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 8500 2400 8500
Wire Wire Line
	2650 8600 2400 8600
Wire Wire Line
	2650 8700 2400 8700
Wire Wire Line
	2650 9150 2400 9150
Wire Wire Line
	2650 9250 2400 9250
Wire Wire Line
	2650 9350 2400 9350
Text Label 2400 8500 0    50   ~ 0
A2
Text Label 2400 8600 0    50   ~ 0
A4
Text Label 2400 8700 0    50   ~ 0
A3
Text Label 2400 9150 0    50   ~ 0
A5
Text Label 2400 9250 0    50   ~ 0
A6
Text Label 2400 9350 0    50   ~ 0
A7
Wire Wire Line
	3250 9250 4500 9250
Wire Wire Line
	4500 9250 4500 8500
Wire Wire Line
	4500 8500 4850 8500
Wire Wire Line
	3250 8600 4850 8600
$Comp
L 74xx:74LS27 U4
U 3 1 6548192B
P 3950 7650
F 0 "U4" H 3950 7975 50  0000 C CNN
F 1 "74LS27" H 3950 7884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3950 7650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 3950 7650 50  0001 C CNN
	3    3950 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7650 4500 7650
Wire Wire Line
	4500 7650 4500 8400
Wire Wire Line
	4500 8400 4850 8400
$Comp
L 74xx:74LS32 U5
U 1 1 654BFD1C
P 6100 8400
F 0 "U5" H 6100 8725 50  0000 C CNN
F 1 "74LS32" H 6100 8634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6100 8400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6100 8400 50  0001 C CNN
	1    6100 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 8500 5800 8500
Wire Wire Line
	5800 8300 5550 8300
Text Label 5550 8300 0    50   ~ 0
~EXIO
$Comp
L 74xx:74LS139 U10
U 1 1 654F2632
P 7200 8200
F 0 "U10" H 7200 8567 50  0000 C CNN
F 1 "74LS139" H 7200 8476 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 7200 8200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 7200 8200 50  0001 C CNN
	1    7200 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 8400 6700 8400
Wire Wire Line
	6700 8100 6450 8100
Wire Wire Line
	6700 8200 6450 8200
Text Label 6450 8100 0    50   ~ 0
A1
Text Label 6450 8200 0    50   ~ 0
A0
NoConn ~ 7700 8100
$Comp
L 74xx:74LS32 U8
U 2 1 6555D04E
P 8900 8100
F 0 "U8" H 8900 8425 50  0000 C CNN
F 1 "74LS32" H 8900 8334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8900 8100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8900 8100 50  0001 C CNN
	2    8900 8100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U8
U 3 1 6555EAB5
P 8900 8650
F 0 "U8" H 8900 8975 50  0000 C CNN
F 1 "74LS32" H 8900 8884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8900 8650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8900 8650 50  0001 C CNN
	3    8900 8650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U5
U 4 1 65560C9F
P 8900 9200
F 0 "U5" H 8900 9525 50  0000 C CNN
F 1 "74LS32" H 8900 9434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8900 9200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8900 9200 50  0001 C CNN
	4    8900 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 8300 8050 8300
Wire Wire Line
	7700 8200 8600 8200
Wire Wire Line
	8600 8000 8350 8000
Wire Wire Line
	8600 8750 8350 8750
Wire Wire Line
	8600 9300 8350 9300
Text Label 8350 8000 0    50   ~ 0
~IOREQ
Text Label 8350 8750 0    50   ~ 0
~IOREQ
Text Label 8350 9300 0    50   ~ 0
~IOREQ
Wire Wire Line
	8250 8400 8250 8550
Wire Wire Line
	8250 8550 8600 8550
Wire Wire Line
	7700 8400 8250 8400
Wire Wire Line
	8050 8300 8050 9100
Wire Wire Line
	8050 9100 8600 9100
Wire Wire Line
	9200 8650 9900 8650
$Comp
L Memory_EPROM:27512 U13
U 1 1 65779EBD
P 11550 8900
F 0 "U13" H 11250 10000 50  0000 C CNN
F 1 "27512" H 11800 10000 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 11550 8900 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/120/227190_DS.pdf" H 11550 8900 50  0001 C CNN
	1    11550 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 8000 10800 8000
Wire Wire Line
	11150 8100 10800 8100
Wire Wire Line
	11150 8200 10800 8200
Wire Wire Line
	11150 8300 10800 8300
Wire Wire Line
	11150 8400 10800 8400
Wire Wire Line
	11150 8500 10800 8500
Wire Wire Line
	11150 8600 10800 8600
Wire Wire Line
	11150 8700 10800 8700
Wire Wire Line
	11150 8800 10800 8800
Wire Wire Line
	11150 8900 10800 8900
Wire Wire Line
	11150 9000 10800 9000
Wire Wire Line
	11150 9100 10800 9100
Wire Wire Line
	11150 9200 10800 9200
Wire Wire Line
	11150 9300 10800 9300
Wire Wire Line
	11150 9400 10800 9400
Wire Wire Line
	11150 9500 10800 9500
Wire Wire Line
	11950 8000 12150 8000
Wire Wire Line
	11950 8100 12150 8100
Wire Wire Line
	11950 8200 12150 8200
Wire Wire Line
	11950 8300 12150 8300
Wire Wire Line
	11950 8400 12150 8400
Wire Wire Line
	11950 8500 12150 8500
Wire Wire Line
	11950 8600 12150 8600
Wire Wire Line
	11950 8700 12150 8700
Text Label 10800 8000 0    50   ~ 0
ROM_A0
Text Label 10800 8100 0    50   ~ 0
ROM_A1
Text Label 10800 8200 0    50   ~ 0
ROM_A2
Text Label 10800 8300 0    50   ~ 0
ROM_A3
Text Label 10800 8400 0    50   ~ 0
ROM_A4
Text Label 10800 8500 0    50   ~ 0
ROM_A5
Text Label 10800 8600 0    50   ~ 0
ROM_A6
Text Label 10800 8700 0    50   ~ 0
ROM_A7
Text Label 10800 8800 0    50   ~ 0
ROM_A8
Text Label 10800 8900 0    50   ~ 0
ROM_A9
Text Label 10800 9000 0    50   ~ 0
ROM_A10
Text Label 10800 9100 0    50   ~ 0
ROM_A11
Text Label 10800 9200 0    50   ~ 0
ROM_A12
Text Label 10800 9300 0    50   ~ 0
ROM_A13
Text Label 10800 9400 0    50   ~ 0
ROM_A14
Text Label 10800 9500 0    50   ~ 0
ROM_A15
Text Label 12000 8000 0    50   ~ 0
ROM_D0
Text Label 12000 8100 0    50   ~ 0
ROM_D1
Text Label 12000 8200 0    50   ~ 0
ROM_D2
Text Label 12000 8300 0    50   ~ 0
ROM_D3
Text Label 12000 8400 0    50   ~ 0
ROM_D4
Text Label 12000 8500 0    50   ~ 0
ROM_D5
Text Label 12000 8600 0    50   ~ 0
ROM_D6
Text Label 12000 8700 0    50   ~ 0
ROM_D7
$Comp
L 74xx:74LS273 U6
U 1 1 65A9829B
P 4550 11600
F 0 "U6" H 4300 12300 50  0000 C CNN
F 1 "74LS273" H 4800 12250 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 4550 11600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 4550 11600 50  0001 C CNN
	1    4550 11600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U9
U 1 1 65A99606
P 7150 11600
F 0 "U9" H 6900 12300 50  0000 C CNN
F 1 "74LS273" H 7400 12300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 7150 11600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 7150 11600 50  0001 C CNN
	1    7150 11600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS541 U11
U 1 1 65A9C068
P 10100 11600
F 0 "U11" H 9850 12300 50  0000 C CNN
F 1 "74LS541" H 10350 12300 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 10100 11600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS541" H 10100 11600 50  0001 C CNN
	1    10100 11600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 11100 3700 11100
Wire Wire Line
	4050 11200 3700 11200
Wire Wire Line
	4050 11300 3700 11300
Wire Wire Line
	4050 11400 3700 11400
Wire Wire Line
	4050 11500 3700 11500
Wire Wire Line
	4050 11600 3700 11600
Wire Wire Line
	4050 11700 3700 11700
Wire Wire Line
	4050 11800 3700 11800
Wire Wire Line
	5050 11100 5350 11100
Wire Wire Line
	5050 11200 5350 11200
Wire Wire Line
	5050 11300 5350 11300
Wire Wire Line
	5050 11400 5350 11400
Wire Wire Line
	5050 11500 5350 11500
Wire Wire Line
	5050 11600 5350 11600
Wire Wire Line
	5050 11700 5350 11700
Wire Wire Line
	5050 11800 5350 11800
Text Label 3700 11100 0    50   ~ 0
D0
Text Label 3700 11200 0    50   ~ 0
D1
Text Label 3700 11300 0    50   ~ 0
D2
Text Label 3700 11400 0    50   ~ 0
D3
Text Label 3700 11500 0    50   ~ 0
D4
Text Label 3700 11600 0    50   ~ 0
D5
Text Label 3700 11700 0    50   ~ 0
D6
Text Label 3700 11800 0    50   ~ 0
D7
Text Label 5150 11100 0    50   ~ 0
ROM_A0
Text Label 5150 11200 0    50   ~ 0
ROM_A1
Text Label 5150 11300 0    50   ~ 0
ROM_A2
Text Label 5150 11400 0    50   ~ 0
ROM_A3
Text Label 5150 11500 0    50   ~ 0
ROM_A4
Text Label 5150 11600 0    50   ~ 0
ROM_A5
Text Label 5150 11700 0    50   ~ 0
ROM_A6
Text Label 5150 11800 0    50   ~ 0
ROM_A7
Wire Wire Line
	3400 12000 3400 9500
Wire Wire Line
	3400 9500 9400 9500
Wire Wire Line
	9400 9500 9400 9200
Wire Wire Line
	9400 9200 9200 9200
Wire Wire Line
	6650 11100 6300 11100
Wire Wire Line
	6650 11200 6300 11200
Wire Wire Line
	6650 11300 6300 11300
Wire Wire Line
	6650 11400 6300 11400
Wire Wire Line
	6650 11500 6300 11500
Wire Wire Line
	6650 11600 6300 11600
Wire Wire Line
	6650 11700 6300 11700
Wire Wire Line
	6650 11800 6300 11800
Text Label 6300 11100 0    50   ~ 0
D0
Text Label 6300 11200 0    50   ~ 0
D1
Text Label 6300 11300 0    50   ~ 0
D2
Text Label 6300 11400 0    50   ~ 0
D3
Text Label 6300 11500 0    50   ~ 0
D4
Text Label 6300 11600 0    50   ~ 0
D5
Text Label 6300 11700 0    50   ~ 0
D6
Text Label 6300 11800 0    50   ~ 0
D7
Wire Wire Line
	3400 12000 4050 12000
Wire Wire Line
	7650 11100 7950 11100
Wire Wire Line
	7650 11200 7950 11200
Wire Wire Line
	7650 11300 7950 11300
Wire Wire Line
	7650 11400 7950 11400
Wire Wire Line
	7650 11500 7950 11500
Wire Wire Line
	7650 11600 7950 11600
Wire Wire Line
	7650 11700 7950 11700
Wire Wire Line
	7650 11800 7950 11800
Text Label 7750 11100 0    50   ~ 0
ROM_A8
Text Label 7750 11200 0    50   ~ 0
ROM_A9
Text Label 7750 11300 0    50   ~ 0
ROM_A10
Text Label 7750 11400 0    50   ~ 0
ROM_A11
Text Label 7750 11500 0    50   ~ 0
ROM_A12
Text Label 7750 11600 0    50   ~ 0
ROM_A13
Text Label 7750 11700 0    50   ~ 0
ROM_A14
Text Label 7750 11800 0    50   ~ 0
ROM_A15
Wire Wire Line
	6650 12000 6050 12000
Wire Wire Line
	6050 12000 6050 9650
Wire Wire Line
	6050 9650 9550 9650
Wire Wire Line
	9550 9650 9550 8100
Wire Wire Line
	9550 8100 9200 8100
Wire Wire Line
	9600 11100 9250 11100
Wire Wire Line
	9600 11200 9250 11200
Wire Wire Line
	9600 11300 9250 11300
Wire Wire Line
	9600 11400 9250 11400
Wire Wire Line
	9600 11500 9250 11500
Wire Wire Line
	9600 11600 9250 11600
Wire Wire Line
	9600 11700 9250 11700
Wire Wire Line
	9600 11800 9250 11800
Text Label 9250 11100 0    50   ~ 0
ROM_D0
Text Label 9250 11200 0    50   ~ 0
ROM_D1
Text Label 9250 11300 0    50   ~ 0
ROM_D2
Text Label 9250 11400 0    50   ~ 0
ROM_D3
Text Label 9250 11500 0    50   ~ 0
ROM_D4
Text Label 9250 11600 0    50   ~ 0
ROM_D5
Text Label 9250 11700 0    50   ~ 0
ROM_D6
Text Label 9250 11800 0    50   ~ 0
ROM_D7
Wire Wire Line
	10600 11100 10900 11100
Wire Wire Line
	10600 11200 10900 11200
Wire Wire Line
	10600 11300 10900 11300
Wire Wire Line
	10600 11400 10900 11400
Wire Wire Line
	10600 11500 10900 11500
Wire Wire Line
	10600 11600 10900 11600
Wire Wire Line
	10600 11700 10900 11700
Wire Wire Line
	10600 11800 10900 11800
Text Label 10700 11100 0    50   ~ 0
D0
Text Label 10700 11200 0    50   ~ 0
D1
Text Label 10700 11300 0    50   ~ 0
D2
Text Label 10700 11400 0    50   ~ 0
D3
Text Label 10700 11500 0    50   ~ 0
D4
Text Label 10700 11600 0    50   ~ 0
D5
Text Label 10700 11700 0    50   ~ 0
D6
Text Label 10700 11800 0    50   ~ 0
D7
Wire Wire Line
	9600 12000 9250 12000
Text Label 9250 12000 0    50   ~ 0
~RD
Wire Wire Line
	9900 9800 8900 9800
Wire Wire Line
	8900 9800 8900 12100
Wire Wire Line
	8900 12100 9600 12100
$Comp
L Device:R R1
U 1 1 65E96F1E
P 2850 11800
F 0 "R1" H 2920 11846 50  0000 L CNN
F 1 "1k" H 2920 11755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2780 11800 50  0001 C CNN
F 3 "~" H 2850 11800 50  0001 C CNN
	1    2850 11800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 65E96F24
P 2850 11550
F 0 "#PWR07" H 2850 11400 50  0001 C CNN
F 1 "+5V" H 2865 11723 50  0000 C CNN
F 2 "" H 2850 11550 50  0001 C CNN
F 3 "" H 2850 11550 50  0001 C CNN
	1    2850 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 11550 2850 11650
Wire Wire Line
	2850 11950 2850 12100
Wire Wire Line
	2850 12100 3800 12100
Wire Wire Line
	3800 12100 3800 12650
Wire Wire Line
	3800 12650 6500 12650
Wire Wire Line
	6500 12650 6500 12100
Wire Wire Line
	6500 12100 6650 12100
Connection ~ 3800 12100
Wire Wire Line
	3800 12100 4050 12100
$Comp
L Device:C C?
U 1 1 66036911
P 5050 12400
AR Path="/636550FF/66036911" Ref="C?"  Part="1" 
AR Path="/66036911" Ref="C6"  Part="1" 
AR Path="/64DF955F/66036911" Ref="C?"  Part="1" 
F 0 "C6" V 4900 12500 50  0000 C CNN
F 1 "0.1uF" V 4900 12250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5088 12250 50  0001 C CNN
F 3 "~" H 5050 12400 50  0001 C CNN
	1    5050 12400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 66125084
P 7650 12400
AR Path="/636550FF/66125084" Ref="C?"  Part="1" 
AR Path="/66125084" Ref="C9"  Part="1" 
AR Path="/64DF955F/66125084" Ref="C?"  Part="1" 
F 0 "C9" V 7500 12500 50  0000 C CNN
F 1 "0.1uF" V 7500 12250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7688 12250 50  0001 C CNN
F 3 "~" H 7650 12400 50  0001 C CNN
	1    7650 12400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 12400 4900 12400
Wire Wire Line
	5200 12400 5550 12400
Wire Wire Line
	5550 12400 5550 10800
Wire Wire Line
	5550 10800 4550 10800
Wire Wire Line
	7500 12400 7150 12400
Wire Wire Line
	7800 12400 8200 12400
Wire Wire Line
	8200 12400 8200 10800
Wire Wire Line
	8200 10800 7150 10800
$Comp
L Device:C C?
U 1 1 6623A0E6
P 10600 12400
AR Path="/636550FF/6623A0E6" Ref="C?"  Part="1" 
AR Path="/6623A0E6" Ref="C13"  Part="1" 
AR Path="/64DF955F/6623A0E6" Ref="C?"  Part="1" 
F 0 "C13" V 10450 12500 50  0000 C CNN
F 1 "0.1uF" V 10450 12250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10638 12250 50  0001 C CNN
F 3 "~" H 10600 12400 50  0001 C CNN
	1    10600 12400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 12400 11150 12400
Wire Wire Line
	11150 12400 11150 10800
Wire Wire Line
	10100 12400 10450 12400
Wire Wire Line
	11150 10800 10100 10800
$Comp
L power:GND #PWR?
U 1 1 662EB936
P 4550 12800
AR Path="/6274F952/662EB936" Ref="#PWR?"  Part="1" 
AR Path="/662EB936" Ref="#PWR012"  Part="1" 
AR Path="/636550FF/662EB936" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 4550 12550 50  0001 C CNN
F 1 "GND" H 4555 12627 50  0000 C CNN
F 2 "" H 4550 12800 50  0001 C CNN
F 3 "" H 4550 12800 50  0001 C CNN
	1    4550 12800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6632089B
P 7150 12700
AR Path="/6274F952/6632089B" Ref="#PWR?"  Part="1" 
AR Path="/6632089B" Ref="#PWR021"  Part="1" 
AR Path="/636550FF/6632089B" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 7150 12450 50  0001 C CNN
F 1 "GND" H 7155 12527 50  0000 C CNN
F 2 "" H 7150 12700 50  0001 C CNN
F 3 "" H 7150 12700 50  0001 C CNN
	1    7150 12700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 663551AB
P 10100 12650
AR Path="/6274F952/663551AB" Ref="#PWR?"  Part="1" 
AR Path="/663551AB" Ref="#PWR027"  Part="1" 
AR Path="/636550FF/663551AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 10100 12400 50  0001 C CNN
F 1 "GND" H 10105 12477 50  0000 C CNN
F 2 "" H 10100 12650 50  0001 C CNN
F 3 "" H 10100 12650 50  0001 C CNN
	1    10100 12650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 12400 10100 12650
Connection ~ 10100 12400
Wire Wire Line
	7150 12400 7150 12700
Connection ~ 7150 12400
Wire Wire Line
	4550 12400 4550 12800
Connection ~ 4550 12400
$Comp
L power:+5V #PWR026
U 1 1 6642DF2E
P 10100 10600
F 0 "#PWR026" H 10100 10450 50  0001 C CNN
F 1 "+5V" H 10115 10773 50  0000 C CNN
F 2 "" H 10100 10600 50  0001 C CNN
F 3 "" H 10100 10600 50  0001 C CNN
	1    10100 10600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 66462E03
P 7150 10650
F 0 "#PWR020" H 7150 10500 50  0001 C CNN
F 1 "+5V" H 7165 10823 50  0000 C CNN
F 2 "" H 7150 10650 50  0001 C CNN
F 3 "" H 7150 10650 50  0001 C CNN
	1    7150 10650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 66497DBC
P 4550 10650
F 0 "#PWR011" H 4550 10500 50  0001 C CNN
F 1 "+5V" H 4565 10823 50  0000 C CNN
F 2 "" H 4550 10650 50  0001 C CNN
F 3 "" H 4550 10650 50  0001 C CNN
	1    4550 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 10800 10100 10600
Connection ~ 10100 10800
Wire Wire Line
	7150 10800 7150 10650
Connection ~ 7150 10800
Wire Wire Line
	4550 10800 4550 10650
Connection ~ 4550 10800
$Comp
L power:+5V #PWR030
U 1 1 66576874
P 11550 7500
F 0 "#PWR030" H 11550 7350 50  0001 C CNN
F 1 "+5V" H 11565 7673 50  0000 C CNN
F 2 "" H 11550 7500 50  0001 C CNN
F 3 "" H 11550 7500 50  0001 C CNN
	1    11550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 7500 11550 7650
$Comp
L Device:C C?
U 1 1 665E70D8
P 12000 10100
AR Path="/636550FF/665E70D8" Ref="C?"  Part="1" 
AR Path="/665E70D8" Ref="C14"  Part="1" 
AR Path="/64DF955F/665E70D8" Ref="C?"  Part="1" 
F 0 "C14" V 11850 10200 50  0000 C CNN
F 1 "0.1uF" V 11850 9950 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 12038 9950 50  0001 C CNN
F 3 "~" H 12000 10100 50  0001 C CNN
	1    12000 10100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12150 10100 12550 10100
Wire Wire Line
	12550 7650 11550 7650
Wire Wire Line
	12550 7650 12550 10100
Connection ~ 11550 7650
Wire Wire Line
	11550 7650 11550 7800
Wire Wire Line
	11850 10100 11550 10100
Wire Wire Line
	11550 10100 11550 10000
$Comp
L power:GND #PWR?
U 1 1 6668C2F6
P 11550 10250
AR Path="/6274F952/6668C2F6" Ref="#PWR?"  Part="1" 
AR Path="/6668C2F6" Ref="#PWR031"  Part="1" 
AR Path="/636550FF/6668C2F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 11550 10000 50  0001 C CNN
F 1 "GND" H 11555 10077 50  0000 C CNN
F 2 "" H 11550 10250 50  0001 C CNN
F 3 "" H 11550 10250 50  0001 C CNN
	1    11550 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 10250 11550 10100
Connection ~ 11550 10100
$Comp
L 74xx:74LS04 U1
U 3 1 667AD537
P 14050 10750
F 0 "U1" H 14050 11067 50  0000 C CNN
F 1 "74LS04" H 14050 10976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 10750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14050 10750 50  0001 C CNN
	3    14050 10750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U7
U 1 1 6686C5A1
P 14050 11300
F 0 "U7" H 14050 11625 50  0000 C CNN
F 1 "74LS27" H 14050 11534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 11300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 14050 11300 50  0001 C CNN
	1    14050 11300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U3
U 1 1 6694E0B7
P 14050 11850
F 0 "U3" H 14050 12175 50  0000 C CNN
F 1 "74LS10" H 14050 12084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 11850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 14050 11850 50  0001 C CNN
	1    14050 11850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 U3
U 4 1 6694FB77
P 5950 14950
F 0 "U3" H 6180 14996 50  0000 L CNN
F 1 "74LS10" H 6180 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5950 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 5950 14950 50  0001 C CNN
	4    5950 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U7
U 4 1 66A8CB17
P 7000 14950
F 0 "U7" H 7230 14996 50  0000 L CNN
F 1 "74LS27" H 7230 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7000 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 7000 14950 50  0001 C CNN
	4    7000 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U8
U 4 1 66AA95CA
P 14050 12400
F 0 "U8" H 14050 12725 50  0000 C CNN
F 1 "74LS32" H 14050 12634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 14050 12400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 14050 12400 50  0001 C CNN
	4    14050 12400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U8
U 5 1 66AC9FAE
P 8100 14950
F 0 "U8" H 8330 14996 50  0000 L CNN
F 1 "74LS32" H 8330 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8100 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8100 14950 50  0001 C CNN
	5    8100 14950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U10
U 2 1 66AE595F
P 14250 13000
F 0 "U10" H 14250 13367 50  0000 C CNN
F 1 "74LS139" H 14250 13276 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 14250 13000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 14250 13000 50  0001 C CNN
	2    14250 13000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U10
U 3 1 66B0BA81
P 9200 14950
F 0 "U10" H 9430 14996 50  0000 L CNN
F 1 "74LS139" H 9430 14905 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 9200 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 9200 14950 50  0001 C CNN
	3    9200 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 10200 13600 10750
Connection ~ 13600 10200
Wire Wire Line
	13750 10750 13600 10750
Wire Wire Line
	13750 11200 13600 11200
Wire Wire Line
	13600 11200 13600 11300
Wire Wire Line
	13750 11300 13600 11300
Connection ~ 13600 11300
Wire Wire Line
	13600 11300 13600 11400
Wire Wire Line
	13750 11400 13600 11400
Wire Wire Line
	13600 12500 13750 12500
Wire Wire Line
	13750 11750 13600 11750
Wire Wire Line
	13600 11750 13600 11850
Wire Wire Line
	13750 11850 13600 11850
Connection ~ 13600 11850
Wire Wire Line
	13600 11850 13600 11950
Wire Wire Line
	13750 11950 13600 11950
Connection ~ 13600 11950
Wire Wire Line
	13600 11950 13600 12300
Wire Wire Line
	13750 12300 13600 12300
Connection ~ 13600 12300
Wire Wire Line
	13600 12300 13600 12500
Wire Wire Line
	13600 12500 13600 12900
Wire Wire Line
	13600 13200 13750 13200
Connection ~ 13600 12500
Wire Wire Line
	13750 12900 13600 12900
Connection ~ 13600 12900
Wire Wire Line
	13600 12900 13600 13000
Wire Wire Line
	13750 13000 13600 13000
Connection ~ 13600 13000
Wire Wire Line
	13600 13000 13600 13200
Wire Wire Line
	13600 13200 13600 13350
Connection ~ 13600 13200
NoConn ~ 14750 13200
NoConn ~ 14750 13100
NoConn ~ 14750 13000
NoConn ~ 14750 12900
NoConn ~ 14350 12400
NoConn ~ 14350 11850
NoConn ~ 14350 11300
NoConn ~ 14350 10750
Wire Wire Line
	9900 8650 9900 9800
Wire Wire Line
	11150 9800 9900 9800
Connection ~ 9900 9800
Wire Wire Line
	11150 9700 11000 9700
Wire Wire Line
	11000 9700 11000 10100
Wire Wire Line
	11000 10100 11550 10100
Wire Wire Line
	13600 11400 13600 11750
Connection ~ 13600 11400
Connection ~ 13600 11750
Wire Wire Line
	13600 10750 13600 11200
Connection ~ 13600 10750
Connection ~ 13600 11200
Text Label 1600 4900 0    50   ~ 0
D2
Text Label 1600 5000 0    50   ~ 0
D1
Text Label 1600 5100 0    50   ~ 0
D0
Text Label 1600 5300 0    50   ~ 0
A15
Text Label 1600 5400 0    50   ~ 0
A14
Text Label 1600 5500 0    50   ~ 0
A13
Text Label 1600 5600 0    50   ~ 0
A12
Text Label 1600 5700 0    50   ~ 0
A11
Text Label 1600 5800 0    50   ~ 0
A10
Text Label 1600 5900 0    50   ~ 0
A9
Text Label 1600 6000 0    50   ~ 0
A8
Text Label 1600 6100 0    50   ~ 0
A7
Text Label 1600 6200 0    50   ~ 0
A6
Text Label 1600 6300 0    50   ~ 0
A5
Text Label 1600 6400 0    50   ~ 0
A4
Text Label 1600 6500 0    50   ~ 0
A3
Text Label 1600 6600 0    50   ~ 0
A2
Text Label 1600 6700 0    50   ~ 0
A1
Text Label 1600 6800 0    50   ~ 0
A0
Text Label 2300 6800 0    50   ~ 0
~MNI
Text Label 2300 6700 0    50   ~ 0
~EXWAIT
Text Label 2300 6600 0    50   ~ 0
~EXINT
Text Label 2300 6400 0    50   ~ 0
RESET
Text Label 2300 6300 0    50   ~ 0
IE0
Text Label 2300 6200 0    50   ~ 0
IE1
Text Label 2300 6100 0    50   ~ 0
~HALT
Text Label 2300 5900 0    50   ~ 0
~MREQ
Text Label 2300 5800 0    50   ~ 0
~IOREQ
Text Label 2300 5700 0    50   ~ 0
~RD
Text Label 2300 5600 0    50   ~ 0
~WR
Text Label 2300 5500 0    50   ~ 0
~M1
Text Label 2300 5400 0    50   ~ 0
phi
Text Label 2300 5300 0    50   ~ 0
D7
Text Label 2300 5200 0    50   ~ 0
D6
Text Label 2300 5100 0    50   ~ 0
D5
Text Label 2300 5000 0    50   ~ 0
D4
Text Label 2300 4900 0    50   ~ 0
D3
Text Label 2300 6500 0    50   ~ 0
~EXIO
Text Label 1550 4800 0    50   ~ 0
+5V
Text Label 1650 5200 0    50   ~ 0
GND
Text Label 1650 6900 0    50   ~ 0
GND
Text Label 2300 4800 0    50   ~ 0
+5V
Text Label 2300 6000 0    50   ~ 0
GND
Text Label 2300 6900 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x22_Odd_Even J4
U 1 1 65B5221C
P 2000 5800
F 0 "J4" H 2050 7017 50  0000 C CNN
F 1 "for CZ-800" H 2050 6926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x22_P2.54mm_Vertical" H 2000 5800 50  0001 C CNN
F 3 "~" H 2000 5800 50  0001 C CNN
	1    2000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5100 1800 5100
Wire Wire Line
	1550 5000 1800 5000
Wire Wire Line
	1550 6900 1800 6900
Wire Wire Line
	1550 6800 1800 6800
Wire Wire Line
	1550 6700 1800 6700
Wire Wire Line
	1550 4900 1800 4900
Wire Wire Line
	1550 6600 1800 6600
Wire Wire Line
	1550 6500 1800 6500
Wire Wire Line
	1550 6400 1800 6400
Wire Wire Line
	1550 6300 1800 6300
Wire Wire Line
	1550 6200 1800 6200
Wire Wire Line
	1550 6100 1800 6100
Wire Wire Line
	1550 6000 1800 6000
Wire Wire Line
	1550 5900 1800 5900
Wire Wire Line
	1550 5800 1800 5800
Wire Wire Line
	1550 5700 1800 5700
Wire Wire Line
	1550 4800 1800 4800
Wire Wire Line
	1550 5600 1800 5600
Wire Wire Line
	1550 5500 1800 5500
Wire Wire Line
	1550 5400 1800 5400
Wire Wire Line
	1550 5300 1800 5300
Wire Wire Line
	1550 5200 1800 5200
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J5
U 1 1 650BBE76
P 3450 5800
F 0 "J5" H 3500 7217 50  0000 C CNN
F 1 "for CZ-801" H 3500 7126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 3450 5800 50  0001 C CNN
F 3 "~" H 3450 5800 50  0001 C CNN
	1    3450 5800
	1    0    0    1   
$EndComp
Wire Wire Line
	3000 6600 3250 6600
Wire Wire Line
	3000 6500 3250 6500
Wire Wire Line
	3000 6400 3250 6400
Wire Wire Line
	3000 6300 3250 6300
Wire Wire Line
	3000 6200 3250 6200
Wire Wire Line
	3000 6100 3250 6100
Wire Wire Line
	3000 6000 3250 6000
Wire Wire Line
	3000 5900 3250 5900
Wire Wire Line
	3000 5800 3250 5800
Wire Wire Line
	3000 5700 3250 5700
Wire Wire Line
	3000 5600 3250 5600
Wire Wire Line
	3000 5500 3250 5500
Wire Wire Line
	3000 5400 3250 5400
Wire Wire Line
	3000 5300 3250 5300
Wire Wire Line
	3000 5200 3250 5200
Wire Wire Line
	3000 6900 3250 6900
Wire Wire Line
	3000 5100 3250 5100
Wire Wire Line
	3000 5000 3250 5000
Wire Wire Line
	3000 4900 3250 4900
Wire Wire Line
	3000 6800 3250 6800
Wire Wire Line
	3000 6700 3250 6700
Text Label 3100 4900 0    50   ~ 0
GND
Text Label 3100 6600 0    50   ~ 0
GND
Text Label 3050 5000 0    50   ~ 0
A0
Text Label 3050 5100 0    50   ~ 0
A1
Text Label 3050 5200 0    50   ~ 0
A2
Text Label 3050 5300 0    50   ~ 0
A3
Text Label 3050 5400 0    50   ~ 0
A4
Text Label 3050 5500 0    50   ~ 0
A5
Text Label 3050 5600 0    50   ~ 0
A6
Text Label 3050 5700 0    50   ~ 0
A7
Text Label 3050 5800 0    50   ~ 0
A8
Text Label 3050 5900 0    50   ~ 0
A9
Text Label 3050 6000 0    50   ~ 0
A10
Text Label 3050 6100 0    50   ~ 0
A11
Text Label 3050 6200 0    50   ~ 0
A12
Text Label 3050 6300 0    50   ~ 0
A13
Text Label 3050 6400 0    50   ~ 0
A14
Text Label 3050 6500 0    50   ~ 0
A15
Text Label 3050 6700 0    50   ~ 0
D0
Text Label 3050 6800 0    50   ~ 0
D1
Text Label 3050 6900 0    50   ~ 0
D2
Wire Wire Line
	4000 4900 3750 4900
Text Label 3750 4900 0    50   ~ 0
GND
Text Label 3750 5800 0    50   ~ 0
GND
Wire Wire Line
	3750 5800 4000 5800
Text Label 3750 5300 0    50   ~ 0
~EXIO
Wire Wire Line
	3750 5000 4000 5000
Wire Wire Line
	3750 5100 4000 5100
Wire Wire Line
	3750 5200 4000 5200
Wire Wire Line
	3750 5300 4000 5300
Wire Wire Line
	3750 5400 4000 5400
Wire Wire Line
	3750 5500 4000 5500
Wire Wire Line
	3750 5600 4000 5600
Wire Wire Line
	3750 5700 4000 5700
Wire Wire Line
	3750 5900 4000 5900
Wire Wire Line
	3750 6000 4000 6000
Wire Wire Line
	3750 6100 4000 6100
Wire Wire Line
	3750 6200 4000 6200
Wire Wire Line
	3750 6300 4000 6300
Wire Wire Line
	3750 6400 4000 6400
Wire Wire Line
	3750 6500 4000 6500
Wire Wire Line
	3750 6600 4000 6600
Wire Wire Line
	3750 6700 4000 6700
Wire Wire Line
	3750 6800 4000 6800
Text Label 3750 6900 0    50   ~ 0
D3
Text Label 3750 6800 0    50   ~ 0
D4
Text Label 3750 6700 0    50   ~ 0
D5
Text Label 3750 6600 0    50   ~ 0
D6
Text Label 3750 6500 0    50   ~ 0
D7
Text Label 3750 6400 0    50   ~ 0
phi
Text Label 3750 6300 0    50   ~ 0
~M1
Text Label 3750 6200 0    50   ~ 0
~WR
Text Label 3750 6100 0    50   ~ 0
~RD
Text Label 3750 6000 0    50   ~ 0
~IOREQ
Text Label 3750 5900 0    50   ~ 0
~MREQ
Text Label 3750 5700 0    50   ~ 0
~HALT
Text Label 3750 5600 0    50   ~ 0
IE1
Text Label 3750 5500 0    50   ~ 0
IE0
Text Label 3750 5400 0    50   ~ 0
RESET
Text Label 3750 5200 0    50   ~ 0
~EXINT
Text Label 3750 5100 0    50   ~ 0
~EXWAIT
Text Label 3750 5000 0    50   ~ 0
~MNI
Wire Wire Line
	3750 6900 4000 6900
NoConn ~ 3750 7000
NoConn ~ 3250 7000
Wire Wire Line
	4000 4800 3750 4800
Text Label 3750 4800 0    50   ~ 0
GND
Wire Wire Line
	4000 4700 3750 4700
Text Label 3750 4700 0    50   ~ 0
GND
Wire Wire Line
	4000 4600 3750 4600
Text Label 3750 4600 0    50   ~ 0
GND
Wire Wire Line
	3000 4800 3250 4800
Text Label 3100 4800 0    50   ~ 0
GND
Wire Wire Line
	3000 4700 3250 4700
Text Label 3100 4700 0    50   ~ 0
GND
Wire Wire Line
	3000 4600 3250 4600
Text Label 3100 4600 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 65741A37
P 4550 6750
F 0 "J6" H 4468 6967 50  0000 C CNN
F 1 "for CZ-801" H 4468 6876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4550 6750 50  0001 C CNN
F 3 "~" H 4550 6750 50  0001 C CNN
	1    4550 6750
	-1   0    0    -1  
$EndComp
Text Label 4750 6750 0    50   ~ 0
+5V
Wire Wire Line
	4750 6750 5000 6750
Text Label 4750 6850 0    50   ~ 0
+5V
Wire Wire Line
	4750 6850 5000 6850
Wire Wire Line
	2300 4900 2550 4900
Wire Wire Line
	2300 5000 2550 5000
Wire Wire Line
	2300 5100 2550 5100
Wire Wire Line
	2300 5200 2550 5200
Wire Wire Line
	2300 5300 2550 5300
Wire Wire Line
	2300 5400 2550 5400
Wire Wire Line
	2300 5500 2550 5500
Wire Wire Line
	2300 5600 2550 5600
Wire Wire Line
	2300 5700 2550 5700
Wire Wire Line
	2300 5800 2550 5800
Wire Wire Line
	2300 5900 2550 5900
Wire Wire Line
	2300 6100 2550 6100
Wire Wire Line
	2300 6200 2550 6200
Wire Wire Line
	2300 6300 2550 6300
Wire Wire Line
	2300 6400 2550 6400
Wire Wire Line
	2300 6500 2550 6500
Wire Wire Line
	2300 6600 2550 6600
Wire Wire Line
	2300 6700 2550 6700
Wire Wire Line
	2300 6800 2550 6800
Wire Wire Line
	2300 6000 2550 6000
Wire Wire Line
	2300 4800 2550 4800
Wire Wire Line
	2300 6900 2550 6900
$EndSCHEMATC

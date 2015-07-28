EESchema Schematic File Version 2
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
LIBS:tinkerforge
LIBS:stepper-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Stepper Brick"
Date "Mi 24 Jun 2015"
Rev "1.3"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2015, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8600 750  2    60   Output ~ 0
STACK-PGND
Text GLabel 8600 850  2    60   Output ~ 0
STACK-PVCC
$Comp
L 3V3 #PWR403
U 1 1 4D126F06
P 7150 2450
F 0 "#PWR403" H 7150 2550 40  0001 C CNN
F 1 "3V3" H 7150 2575 40  0000 C CNN
F 2 "" H 7150 2450 60  0001 C CNN
F 3 "" H 7150 2450 60  0001 C CNN
	1    7150 2450
	1    0    0    -1  
$EndComp
$Comp
L R R401
U 1 1 4D0BA1A4
P 2000 1850
F 0 "R401" V 2080 1850 50  0000 C CNN
F 1 "1k" V 2000 1850 50  0000 C CNN
F 2 "kicad-libraries:0603" H 2000 1850 60  0001 C CNN
F 3 "" H 2000 1850 60  0001 C CNN
	1    2000 1850
	0    1    1    0   
$EndComp
Text Notes 7850 4200 0    60   ~ 0
every brick powers 3.3V!
$Comp
L GND #PWR402
U 1 1 4CC860F2
P 4400 6450
F 0 "#PWR402" H 4400 6450 30  0001 C CNN
F 1 "GND" H 4400 6380 30  0001 C CNN
F 2 "" H 4400 6450 60  0001 C CNN
F 3 "" H 4400 6450 60  0001 C CNN
	1    4400 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR401
U 1 1 4CC860E5
P 4400 3450
F 0 "#PWR401" H 4400 3450 30  0001 C CNN
F 1 "GND" H 4400 3380 30  0001 C CNN
F 2 "" H 4400 3450 60  0001 C CNN
F 3 "" H 4400 3450 60  0001 C CNN
	1    4400 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR409
U 1 1 4CC860D5
P 9700 6300
F 0 "#PWR409" H 9700 6300 30  0001 C CNN
F 1 "GND" H 9700 6230 30  0001 C CNN
F 2 "" H 9700 6300 60  0001 C CNN
F 3 "" H 9700 6300 60  0001 C CNN
	1    9700 6300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR408
U 1 1 4CC860D1
P 9700 3200
F 0 "#PWR408" H 9700 3200 30  0001 C CNN
F 1 "GND" H 9700 3130 30  0001 C CNN
F 2 "" H 9700 3200 60  0001 C CNN
F 3 "" H 9700 3200 60  0001 C CNN
	1    9700 3200
	1    0    0    -1  
$EndComp
$Comp
L B0520LW-7-F D403
U 1 1 4CC0497F
P 10750 4100
F 0 "D403" H 10750 4200 40  0000 C CNN
F 1 "B0520LW-7-F" H 10750 4000 40  0000 C CNN
F 2 "kicad-libraries:SOD-123" H 10750 4000 60  0001 C CNN
F 3 "" H 10750 4100 60  0001 C CNN
	1    10750 4100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR405
U 1 1 4CC0493B
P 9050 3900
F 0 "#PWR405" H 9050 4000 40  0001 C CNN
F 1 "3V3" H 9050 4025 40  0000 C CNN
F 2 "" H 9050 3900 60  0001 C CNN
F 3 "" H 9050 3900 60  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
$Comp
L STACK-DOWN-1 J402
U 1 1 4C46D30D
P 4400 5300
F 0 "J402" H 3550 6150 60  0000 C CNN
F 1 "STACK-DOWN" H 4900 6150 60  0000 C CNN
F 2 "kicad-libraries:BTB08-ACS-BTM" H 4400 5300 60  0001 C CNN
F 3 "" H 4400 5300 60  0001 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
Text GLabel 6950 4800 2    60   Input ~ 0
STACK-SPI-SELECT
Text GLabel 1900 2050 0    60   Output ~ 0
STACK-SYNC/JTAG-TCK
Text GLabel 1900 1950 0    60   Output ~ 0
STACK-DETECT/JTAG-TMS
$Comp
L STACK-UP-2 J403
U 1 1 4C46D315
P 9700 2200
F 0 "J403" H 8850 3050 60  0000 C CNN
F 1 "STACK-UP-HIGH" H 10300 3050 60  0000 C CNN
F 2 "kicad-libraries:BTB08-ACS-TOP" H 9700 2200 60  0001 C CNN
F 3 "" H 9700 2200 60  0001 C CNN
	1    9700 2200
	1    0    0    -1  
$EndComp
$Comp
L STACK-DOWN-2 J404
U 1 1 4C46D31B
P 9700 5250
F 0 "J404" H 8850 6100 60  0000 C CNN
F 1 "STACK-DOWN" H 10250 6100 60  0000 C CNN
F 2 "kicad-libraries:BTB08-ACS-BTM" H 9700 5250 60  0001 C CNN
F 3 "" H 9700 5250 60  0001 C CNN
	1    9700 5250
	1    0    0    -1  
$EndComp
Text GLabel 6900 2850 2    60   Input ~ 0
STACK-SER-TXD
Text GLabel 6900 2750 2    60   Input ~ 0
STACK-SER-RXD
Text GLabel 1600 1850 0    60   Output ~ 0
STACK-RESET
Text GLabel 6950 1650 2    60   Input ~ 0
STACK-I2C-SCL/JTAG-TDO
Text GLabel 6950 1550 2    60   Input ~ 0
STACK-I2C-SDA/JTAG-TDI
Text GLabel 1900 1750 0    60   Input ~ 0
STACK-SPI-SCLK
Text GLabel 1900 1650 0    60   Input ~ 0
STACK-SPI-MOSI
Text GLabel 1900 1550 0    60   Input ~ 0
STACK-SPI-MISO
$Comp
L GND #PWR404
U 1 1 4C46D480
P 8500 3500
F 0 "#PWR404" H 8500 3500 30  0001 C CNN
F 1 "GND" H 8500 3430 30  0001 C CNN
F 2 "" H 8500 3500 60  0001 C CNN
F 3 "" H 8500 3500 60  0001 C CNN
	1    8500 3500
	1    0    0    -1  
$EndComp
Text GLabel 9600 3300 0    60   Output ~ 0
VSTACK
$Comp
L STACK-UP-1 J401
U 1 1 4C46D305
P 4400 2250
F 0 "J401" H 3550 3100 60  0000 C CNN
F 1 "STACK-UP-HIGH" H 5000 3100 60  0000 C CNN
F 2 "kicad-libraries:BTB08-ACS-TOP" H 4400 2250 60  0001 C CNN
F 3 "" H 4400 2250 60  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB402
U 1 1 4C458E1C
P 10050 3300
F 0 "FB402" H 10050 3450 60  0000 C CNN
F 1 "FB" H 10050 3200 60  0000 C CNN
F 2 "kicad-libraries:0603" H 10050 3300 60  0001 C CNN
F 3 "" H 10050 3300 60  0001 C CNN
	1    10050 3300
	1    0    0    -1  
$EndComp
$Comp
L C C402
U 1 1 5135D6FE
P 9650 3500
F 0 "C402" H 9700 3600 50  0000 L CNN
F 1 "1µF" H 9700 3400 50  0000 L CNN
F 2 "kicad-libraries:0603" H 9650 3500 60  0001 C CNN
F 3 "" H 9650 3500 60  0001 C CNN
	1    9650 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR407
U 1 1 5135D70B
P 9650 3750
F 0 "#PWR407" H 9650 3750 30  0001 C CNN
F 1 "GND" H 9650 3680 30  0001 C CNN
F 2 "" H 9650 3750 60  0001 C CNN
F 3 "" H 9650 3750 60  0001 C CNN
	1    9650 3750
	1    0    0    -1  
$EndComp
$Comp
L C C404
U 1 1 558ABA59
P 10450 3500
F 0 "C404" H 10500 3600 50  0000 L CNN
F 1 "1µF" H 10500 3400 50  0000 L CNN
F 2 "kicad-libraries:0603" H 10450 3500 60  0001 C CNN
F 3 "" H 10450 3500 60  0001 C CNN
	1    10450 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR412
U 1 1 558ABA9F
P 10450 3750
F 0 "#PWR412" H 10450 3750 30  0001 C CNN
F 1 "GND" H 10450 3680 30  0001 C CNN
F 2 "" H 10450 3750 60  0001 C CNN
F 3 "" H 10450 3750 60  0001 C CNN
	1    10450 3750
	1    0    0    -1  
$EndComp
$Comp
L TVS D402
U 1 1 558ABBBF
P 10750 3550
F 0 "D402" H 10700 3650 40  0000 C CNN
F 1 "ESD5V0D3B-TP" H 10750 3450 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 10750 3550 60  0001 C CNN
F 3 "" H 10750 3550 60  0000 C CNN
	1    10750 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR413
U 1 1 558ABC85
P 10750 3850
F 0 "#PWR413" H 10750 3850 30  0001 C CNN
F 1 "GND" H 10750 3780 30  0001 C CNN
F 2 "" H 10750 3850 60  0001 C CNN
F 3 "" H 10750 3850 60  0001 C CNN
	1    10750 3850
	1    0    0    -1  
$EndComp
$Comp
L FILTER FB401
U 1 1 558AC744
P 9600 3900
F 0 "FB401" H 9600 4050 60  0000 C CNN
F 1 "FB" H 9600 3800 60  0000 C CNN
F 2 "kicad-libraries:0603" H 9600 3900 60  0001 C CNN
F 3 "" H 9600 3900 60  0001 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
$Comp
L C C403
U 1 1 558AC78C
P 10000 4100
F 0 "C403" H 10050 4200 50  0000 L CNN
F 1 "1µF" H 10050 4000 50  0000 L CNN
F 2 "kicad-libraries:0603" H 10000 4100 60  0001 C CNN
F 3 "" H 10000 4100 60  0001 C CNN
	1    10000 4100
	1    0    0    -1  
$EndComp
$Comp
L C C401
U 1 1 558AC81A
P 9200 4100
F 0 "C401" H 9250 4200 50  0000 L CNN
F 1 "1µF" H 9250 4000 50  0000 L CNN
F 2 "kicad-libraries:0603" H 9200 4100 60  0001 C CNN
F 3 "" H 9200 4100 60  0001 C CNN
	1    9200 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR410
U 1 1 558AC89A
P 10000 4350
F 0 "#PWR410" H 10000 4350 30  0001 C CNN
F 1 "GND" H 10000 4280 30  0001 C CNN
F 2 "" H 10000 4350 60  0001 C CNN
F 3 "" H 10000 4350 60  0001 C CNN
	1    10000 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR406
U 1 1 558AC8CF
P 9200 4350
F 0 "#PWR406" H 9200 4350 30  0001 C CNN
F 1 "GND" H 9200 4280 30  0001 C CNN
F 2 "" H 9200 4350 60  0001 C CNN
F 3 "" H 9200 4350 60  0001 C CNN
	1    9200 4350
	1    0    0    -1  
$EndComp
$Comp
L TVS D401
U 1 1 558AC9C1
P 10350 4150
F 0 "D401" H 10300 4250 40  0000 C CNN
F 1 "TVS 3V3" H 10350 4050 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 10350 4150 60  0001 C CNN
F 3 "" H 10350 4150 60  0000 C CNN
	1    10350 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR411
U 1 1 558ACBD9
P 10350 4450
F 0 "#PWR411" H 10350 4450 30  0001 C CNN
F 1 "GND" H 10350 4380 30  0001 C CNN
F 2 "" H 10350 4450 60  0001 C CNN
F 3 "" H 10350 4450 60  0001 C CNN
	1    10350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2550 2950 2550
Wire Wire Line
	2950 2550 2950 5600
Wire Wire Line
	3200 1850 2250 1850
Connection ~ 6850 1550
Wire Wire Line
	5600 1550 6950 1550
Wire Wire Line
	6850 1550 6850 4600
Wire Wire Line
	6850 4600 5600 4600
Wire Wire Line
	5600 5500 6700 5500
Wire Wire Line
	6700 5500 6700 2350
Wire Wire Line
	6700 2350 5600 2350
Wire Wire Line
	5600 2450 7150 2450
Wire Wire Line
	5600 1750 6400 1750
Connection ~ 11050 1950
Wire Wire Line
	11050 1250 11050 5000
Wire Wire Line
	11050 1250 8450 1250
Wire Wire Line
	8450 1250 8450 850 
Wire Wire Line
	8450 850  8600 850 
Wire Wire Line
	8500 5950 8300 5950
Wire Wire Line
	5600 5300 6600 5300
Wire Wire Line
	6600 5300 6600 2150
Wire Wire Line
	6600 2150 5600 2150
Wire Wire Line
	5600 5100 6500 5100
Wire Wire Line
	6500 5100 6500 1950
Wire Wire Line
	6500 1950 5600 1950
Wire Wire Line
	5600 4900 6400 4900
Wire Wire Line
	6400 4900 6400 1750
Wire Wire Line
	5600 5700 6200 5700
Wire Wire Line
	6200 5700 6200 2650
Wire Wire Line
	6200 2650 5600 2650
Wire Wire Line
	3200 2750 3050 2750
Wire Wire Line
	3200 2950 3150 2950
Wire Wire Line
	3200 2250 2750 2250
Wire Wire Line
	3200 2150 2700 2150
Connection ~ 6050 2750
Wire Wire Line
	5600 2750 6900 2750
Wire Wire Line
	6000 2850 6000 5900
Wire Wire Line
	6000 5900 5600 5900
Wire Wire Line
	2700 2150 2700 5200
Wire Wire Line
	2700 5200 3200 5200
Wire Wire Line
	3200 5400 2800 5400
Wire Wire Line
	2800 5400 2800 2350
Wire Wire Line
	2950 5600 3200 5600
Wire Wire Line
	3200 5800 3050 5800
Wire Wire Line
	3050 5800 3050 2750
Wire Wire Line
	3200 6000 3150 6000
Wire Wire Line
	3150 6000 3150 2950
Wire Wire Line
	4400 6450 4400 6350
Wire Wire Line
	9700 6300 9700 6200
Wire Wire Line
	10900 5550 10900 5750
Wire Wire Line
	11000 2600 11000 5650
Wire Wire Line
	11000 2600 10900 2600
Connection ~ 2350 1650
Wire Wire Line
	3200 4700 2350 4700
Wire Wire Line
	2350 4700 2350 1650
Wire Wire Line
	3200 4900 2500 4900
Wire Wire Line
	1900 2050 3200 2050
Wire Wire Line
	3200 1650 1900 1650
Wire Wire Line
	8500 3500 8500 3300
Wire Wire Line
	10400 3300 11000 3300
Wire Wire Line
	10900 5950 11100 5950
Wire Wire Line
	11100 5950 11100 2900
Wire Wire Line
	11100 2900 10900 2900
Connection ~ 10900 1950
Wire Wire Line
	10900 1950 11050 1950
Connection ~ 10900 5000
Wire Wire Line
	11050 5000 10900 5000
Connection ~ 8500 5650
Wire Wire Line
	8500 5850 8500 5550
Connection ~ 10900 5650
Connection ~ 10900 4650
Wire Wire Line
	10900 5450 10900 4550
Connection ~ 10900 4850
Connection ~ 10900 5050
Connection ~ 10900 5250
Connection ~ 8500 4850
Connection ~ 8500 4650
Wire Wire Line
	10900 2500 10900 2700
Connection ~ 8500 2600
Connection ~ 10900 2300
Wire Wire Line
	10900 1500 10900 2400
Connection ~ 10900 2100
Connection ~ 10900 1900
Connection ~ 10900 1800
Connection ~ 10900 1600
Connection ~ 8500 2300
Wire Wire Line
	8500 1500 8500 2400
Connection ~ 8500 2100
Connection ~ 8500 1900
Connection ~ 8500 1700
Connection ~ 8500 1600
Connection ~ 8500 1800
Connection ~ 8500 2000
Connection ~ 8500 2200
Connection ~ 10900 1700
Connection ~ 10900 2000
Connection ~ 10900 2200
Wire Wire Line
	8500 2500 8500 2800
Connection ~ 8500 2700
Connection ~ 10900 2600
Connection ~ 8500 4750
Connection ~ 8500 4950
Connection ~ 8500 5150
Connection ~ 8500 5050
Wire Wire Line
	8500 5450 8500 4550
Connection ~ 8500 5250
Connection ~ 8500 5350
Connection ~ 10900 5350
Connection ~ 10900 5150
Connection ~ 10900 4950
Connection ~ 10900 4750
Connection ~ 8500 5750
Wire Wire Line
	8500 5700 8400 5700
Connection ~ 8500 5700
Wire Wire Line
	8400 5700 8400 2650
Wire Wire Line
	8400 2650 8500 2650
Connection ~ 8500 2650
Wire Wire Line
	8500 5000 8350 5000
Connection ~ 8500 5000
Wire Wire Line
	8500 1950 8350 1950
Connection ~ 8500 1950
Wire Wire Line
	8500 2900 8300 2900
Wire Wire Line
	8300 2900 8300 5950
Wire Wire Line
	8500 3300 8400 3300
Wire Wire Line
	1900 1550 3200 1550
Wire Wire Line
	3200 1750 1900 1750
Wire Wire Line
	3200 1950 1900 1950
Wire Wire Line
	2550 1950 2550 5000
Wire Wire Line
	2550 5000 3200 5000
Connection ~ 2550 1950
Wire Wire Line
	2400 1750 2400 4800
Wire Wire Line
	2400 4800 3200 4800
Connection ~ 2400 1750
Wire Wire Line
	2300 1550 2300 4600
Wire Wire Line
	2300 4600 3200 4600
Connection ~ 2300 1550
Wire Wire Line
	11000 5650 10900 5650
Wire Wire Line
	10900 5850 11150 5850
Wire Wire Line
	11150 5850 11150 2800
Wire Wire Line
	11150 2800 10900 2800
Wire Wire Line
	9050 3900 9250 3900
Wire Wire Line
	4400 3450 4400 3300
Wire Wire Line
	2800 2350 3200 2350
Wire Wire Line
	3100 5900 3100 2850
Wire Wire Line
	3100 5900 3200 5900
Wire Wire Line
	3000 5700 3000 2650
Wire Wire Line
	3000 5700 3200 5700
Wire Wire Line
	3200 5500 2900 5500
Wire Wire Line
	2900 5500 2900 2450
Wire Wire Line
	2750 2250 2750 5300
Wire Wire Line
	2750 5300 3200 5300
Wire Wire Line
	6050 2750 6050 5800
Wire Wire Line
	6050 5800 5600 5800
Wire Wire Line
	5600 6000 5950 6000
Wire Wire Line
	5950 6000 5950 2950
Wire Wire Line
	5600 2850 6900 2850
Connection ~ 6000 2850
Wire Wire Line
	3200 5100 2600 5100
Wire Wire Line
	2600 5100 2600 2050
Connection ~ 2600 2050
Wire Wire Line
	3100 2850 3200 2850
Wire Wire Line
	3000 2650 3200 2650
Wire Wire Line
	5950 2950 5600 2950
Wire Wire Line
	5600 5600 6250 5600
Wire Wire Line
	6250 5600 6250 2550
Wire Wire Line
	6250 2550 5600 2550
Wire Wire Line
	5600 5000 6450 5000
Wire Wire Line
	6450 5000 6450 1850
Wire Wire Line
	6450 1850 5600 1850
Wire Wire Line
	5600 5200 6550 5200
Wire Wire Line
	6550 5200 6550 2050
Wire Wire Line
	6550 2050 5600 2050
Wire Wire Line
	8350 5000 8350 750 
Wire Wire Line
	8350 750  8600 750 
Connection ~ 8350 1950
Wire Wire Line
	5600 4800 6950 4800
Wire Wire Line
	5600 2250 6650 2250
Wire Wire Line
	6650 2250 6650 5400
Wire Wire Line
	6650 5400 5600 5400
Wire Wire Line
	6800 1650 6800 4700
Wire Wire Line
	6800 4700 5600 4700
Wire Wire Line
	5600 1650 6950 1650
Connection ~ 6800 1650
Wire Wire Line
	1600 1850 1750 1850
Wire Wire Line
	2500 4900 2500 1850
Connection ~ 2500 1850
Wire Wire Line
	9650 3750 9650 3700
Wire Wire Line
	10450 3750 10450 3700
Wire Wire Line
	10750 3850 10750 3800
Wire Wire Line
	9700 3300 9600 3300
Connection ~ 9650 3300
Connection ~ 10450 3300
Connection ~ 10750 3300
Wire Wire Line
	9700 3200 9700 3150
Connection ~ 11000 3300
Connection ~ 8400 3300
Wire Wire Line
	10350 4450 10350 4400
Wire Wire Line
	10000 4350 10000 4300
Wire Wire Line
	9200 4350 9200 4300
Wire Wire Line
	10950 4100 11150 4100
Connection ~ 11150 4100
Wire Wire Line
	9950 3900 10550 3900
Wire Wire Line
	10550 3900 10550 4100
Connection ~ 10350 3900
Connection ~ 10000 3900
Connection ~ 9200 3900
Connection ~ 2900 2450
Text GLabel 1900 2450 0    60   Input ~ 0
STACK-INT
Wire Wire Line
	3200 2450 1900 2450
$EndSCHEMATC
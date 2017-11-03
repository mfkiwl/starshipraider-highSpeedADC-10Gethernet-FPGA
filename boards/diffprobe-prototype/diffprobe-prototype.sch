EESchema Schematic File Version 2
LIBS:analog-azonenberg
LIBS:cmos
LIBS:cypress-azonenberg
LIBS:hirose-azonenberg
LIBS:memory-azonenberg
LIBS:microchip-azonenberg
LIBS:osc-azonenberg
LIBS:passive-azonenberg
LIBS:power-azonenberg
LIBS:silego-azonenberg
LIBS:special-azonenberg
LIBS:xilinx-azonenberg
LIBS:conn
LIBS:device
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Differential Probe Prototype"
Date "2017-11-02"
Rev "0.1"
Comp "Andrew D. Zonenberg"
Comment1 "Top Level"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BNC P11
U 1 1 59FA8825
P 10000 2350
F 0 "P11" H 10101 2326 50  0000 L CNN
F 1 "SMA" H 10101 2235 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 10000 2350 50  0001 C CNN
F 3 "" H 10000 2350 50  0000 C CNN
	1    10000 2350
	1    0    0    -1  
$EndComp
$Comp
L ATTEN_RF_PI R10
U 1 1 59FA91EC
P 7950 2850
F 0 "R10" H 8250 3637 60  0000 C CNN
F 1 "AT0603T06ECATD" H 8250 3531 60  0000 C CNN
F 2 "azonenberg_pcb:ATC_AT_0603" H 7950 2850 60  0001 C CNN
F 3 "" H 7950 2850 60  0001 C CNN
	1    7950 2850
	1    0    0    -1  
$EndComp
Text Label 9750 2550 2    60   ~ 0
GND
Text Label 7100 2800 2    60   ~ 0
GND
$Comp
L LTC3032 U1
U 1 1 59FA9A07
P 3250 7050
F 0 "U1" H 3250 8347 60  0000 C CNN
F 1 "LT3032IDE-5#PBF" H 3250 8241 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_14_0.5MM_4x3MM_DUALPAD_LTC_DE14MA" H 3250 7000 60  0001 C CNN
F 3 "" H 3250 7000 60  0001 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59FA9AA7
P 6600 2350
F 0 "R9" V 6500 2300 50  0000 C CNN
F 1 "49.9" V 6600 2350 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6530 2350 50  0001 C CNN
F 3 "" H 6600 2350 50  0000 C CNN
	1    6600 2350
	0    1    1    0   
$EndComp
Text Label 9300 2350 0    60   ~ 0
OUT_ATTEN
Text Label 6800 2350 0    60   ~ 0
OUT_TERM
$Comp
L THS3217 U2
U 1 1 59FAA051
P 4550 3050
F 0 "U2" H 4525 5297 60  0000 C CNN
F 1 "THS3217" H 4525 5191 60  0000 C CNN
F 2 "azonenberg_pcb:QFN_16_0.65MM_4x4MM" H 4550 3000 60  0001 C CNN
F 3 "" H 4550 3000 60  0001 C CNN
	1    4550 3050
	1    0    0    -1  
$EndComp
Text Label 5750 2350 0    60   ~ 0
OUT
$Comp
L BNC P2
U 1 1 59FAA2DC
P 2000 2500
F 0 "P2" H 2101 2476 50  0000 L CNN
F 1 "SMA" H 2101 2385 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 2000 2500 50  0001 C CNN
F 3 "" H 2000 2500 50  0000 C CNN
	1    2000 2500
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59FAA420
P 2350 2600
F 0 "R2" V 2250 2600 50  0000 C CNN
F 1 "49.9" V 2350 2600 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 2280 2600 50  0001 C CNN
F 3 "" H 2350 2600 50  0000 C CNN
	1    2350 2600
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 59FAA75D
P 2350 2200
F 0 "R1" V 2250 2200 50  0000 C CNN
F 1 "49.9" V 2350 2200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 2280 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0000 C CNN
	1    2350 2200
	-1   0    0    1   
$EndComp
$Comp
L BNC P1
U 1 1 59FAA78D
P 2000 2300
F 0 "P1" H 2101 2184 50  0000 L CNN
F 1 "SMA" H 2101 2275 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 2000 2300 50  0001 C CNN
F 3 "" H 2000 2300 50  0000 C CNN
	1    2000 2300
	-1   0    0    1   
$EndComp
Text Label 2000 2050 0    60   ~ 0
GND
Text Label 2000 2750 0    60   ~ 0
GND
Text Label 2750 2350 0    60   ~ 0
VIN_P
Text Label 2750 2450 0    60   ~ 0
VIN_N
Text Label 3600 1050 2    60   ~ 0
5V0_P
Text Label 3600 1450 2    60   ~ 0
5V0_N
Text Label 3600 1250 2    60   ~ 0
GND
Text Label 3150 1850 2    60   ~ 0
5V0_P
$Comp
L R R7
U 1 1 59FAB113
P 3450 1750
F 0 "R7" V 3500 1600 50  0000 C CNN
F 1 "0" V 3450 1750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3380 1750 50  0001 C CNN
F 3 "" H 3450 1750 50  0000 C CNN
	1    3450 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 59FAB216
P 3450 1850
F 0 "R8" V 3500 1700 50  0000 C CNN
F 1 "0" V 3450 1850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3380 1850 50  0001 C CNN
F 3 "" H 3450 1850 50  0000 C CNN
	1    3450 1850
	0    -1   -1   0   
$EndComp
Text Notes 5300 2550 0    60   ~ 0
D2S has 2V/V gain\nInput is 20x probe, net 10x attenuation
NoConn ~ 5300 2750
NoConn ~ 5300 2050
Text Label 3250 2750 2    60   ~ 0
GND
Text Label 3250 2850 2    60   ~ 0
GND
$Comp
L R R6
U 1 1 59FAB581
P 3400 2950
F 0 "R6" V 3450 2800 50  0000 C CNN
F 1 "DNP" V 3400 2950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3330 2950 50  0001 C CNN
F 3 "" H 3400 2950 50  0000 C CNN
	1    3400 2950
	0    -1   -1   0   
$EndComp
Text Label 3250 2950 2    60   ~ 0
GND
Text Label 3150 1750 2    60   ~ 0
5V0_P
$Comp
L R R5
U 1 1 59FAB9AD
P 3400 2850
F 0 "R5" V 3450 2700 50  0000 C CNN
F 1 "DNP" V 3400 2850 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3330 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0000 C CNN
	1    3400 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 59FAB9D7
P 3400 2750
F 0 "R4" V 3450 2600 50  0000 C CNN
F 1 "DNP" V 3400 2750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3330 2750 50  0001 C CNN
F 3 "" H 3400 2750 50  0000 C CNN
	1    3400 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 59FABA69
P 3400 2050
F 0 "R3" V 3450 1900 50  0000 C CNN
F 1 "DNP" V 3400 2050 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3330 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0000 C CNN
	1    3400 2050
	0    -1   -1   0   
$EndComp
Text Label 3250 2050 2    60   ~ 0
GND
$Comp
L C C1
U 1 1 59FABC12
P 1050 1000
F 0 "C1" H 1165 1046 50  0000 L CNN
F 1 "4.7 uF 10V" H 1165 955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 1088 850 50  0001 C CNN
F 3 "" H 1050 1000 50  0000 C CNN
	1    1050 1000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59FABC7A
P 1550 1000
F 0 "C3" H 1665 1046 50  0000 L CNN
F 1 "0.47 uF" H 1665 955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1588 850 50  0001 C CNN
F 3 "" H 1550 1000 50  0000 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59FABCEA
P 2100 1000
F 0 "C5" H 2215 1046 50  0000 L CNN
F 1 "0.01 uF" H 2215 955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2138 850 50  0001 C CNN
F 3 "" H 2100 1000 50  0000 C CNN
	1    2100 1000
	1    0    0    -1  
$EndComp
Text Label 900  850  2    60   ~ 0
5V0_P
Text Label 900  1150 2    60   ~ 0
GND
$Comp
L C C2
U 1 1 59FABF3E
P 1050 1300
F 0 "C2" H 1165 1346 50  0000 L CNN
F 1 "4.7 uF 10V" H 1165 1255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 1088 1150 50  0001 C CNN
F 3 "" H 1050 1300 50  0000 C CNN
	1    1050 1300
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59FABF44
P 1550 1300
F 0 "C4" H 1665 1346 50  0000 L CNN
F 1 "0.47 uF" H 1665 1255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1588 1150 50  0001 C CNN
F 3 "" H 1550 1300 50  0000 C CNN
	1    1550 1300
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59FABF4A
P 2100 1300
F 0 "C6" H 2215 1346 50  0000 L CNN
F 1 "0.01 uF" H 2215 1255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2138 1150 50  0001 C CNN
F 3 "" H 2100 1300 50  0000 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
Text Label 900  1450 2    60   ~ 0
5V0_N
$Comp
L C C7
U 1 1 59FAC189
P 2650 1000
F 0 "C7" H 2765 1046 50  0000 L CNN
F 1 "0.47 uF" H 2765 955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2688 850 50  0001 C CNN
F 3 "" H 2650 1000 50  0000 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 59FAC288
P 2650 1300
F 0 "C8" H 2765 1346 50  0000 L CNN
F 1 "0.47 uF" H 2765 1255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2688 1150 50  0001 C CNN
F 3 "" H 2650 1300 50  0000 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_3_PWROUT K1
U 1 1 59FAC56E
P 1250 4350
F 0 "K1" H 1378 4378 50  0000 L CNN
F 1 "CUI PJ-058BH" H 1378 4294 40  0000 L CNN
F 2 "azonenberg_pcb:CONN_CUI_PJ-058BH_HIPWR_BARREL_NOSLOT" H 1250 4350 60  0001 C CNN
F 3 "" H 1250 4350 60  0000 C CNN
	1    1250 4350
	-1   0    0    -1  
$EndComp
Text Label 1750 4250 0    60   ~ 0
12V0_P_UNFUSED
Text Label 1750 4350 0    60   ~ 0
GND
$Comp
L CONN_3_PWROUT K2
U 1 1 59FACB08
P 1250 4900
F 0 "K2" H 1378 4928 50  0000 L CNN
F 1 "CUI PJ-058BH" H 1378 4844 40  0000 L CNN
F 2 "azonenberg_pcb:CONN_CUI_PJ-058BH_HIPWR_BARREL_NOSLOT" H 1250 4900 60  0001 C CNN
F 3 "" H 1250 4900 60  0000 C CNN
	1    1250 4900
	-1   0    0    -1  
$EndComp
Text Label 1750 4800 0    60   ~ 0
12V0_N_UNFUSED
Text Label 1750 4900 0    60   ~ 0
GND
$Comp
L FUSE_PWROUT F1
U 1 1 59FACC81
P 2950 4250
F 0 "F1" H 2950 4490 50  0000 C CNN
F 1 "250 mA" H 2950 4399 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" H 2950 4250 60  0001 C CNN
F 3 "" H 2950 4250 60  0000 C CNN
	1    2950 4250
	1    0    0    -1  
$EndComp
$Comp
L FUSE_PWROUT F2
U 1 1 59FACD3B
P 2950 4800
F 0 "F2" H 2950 5040 50  0000 C CNN
F 1 "250 mA" H 2950 4949 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" H 2950 4800 60  0001 C CNN
F 3 "" H 2950 4800 60  0000 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Text Label 4050 4250 0    60   ~ 0
12V0_P
Text Label 4050 4800 0    60   ~ 0
12V0_N
$Comp
L CONN_01X01 P3
U 1 1 59FAD0F9
P 9050 3850
F 0 "P3" H 9600 3850 50  0000 C CNN
F 1 "TESTPOINT" H 9300 3850 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_BARETRACE_328UM" H 9050 3850 50  0001 C CNN
F 3 "" H 9050 3850 50  0000 C CNN
	1    9050 3850
	-1   0    0    1   
$EndComp
Text Label 9500 3850 0    60   ~ 0
OUT
$Comp
L CONN_01X01 P4
U 1 1 59FAD64F
P 9050 4050
F 0 "P4" H 9600 4050 50  0000 C CNN
F 1 "TESTPOINT" H 9300 4050 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_BARETRACE_328UM" H 9050 4050 50  0001 C CNN
F 3 "" H 9050 4050 50  0000 C CNN
	1    9050 4050
	-1   0    0    1   
$EndComp
Text Label 9500 4050 0    60   ~ 0
GND
$Comp
L CONN_01X01 P5
U 1 1 59FAD8A4
P 9050 4350
F 0 "P5" H 9600 4350 50  0000 C CNN
F 1 "TESTCLIP" H 9300 4350 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 4350 50  0001 C CNN
F 3 "" H 9050 4350 50  0000 C CNN
	1    9050 4350
	-1   0    0    1   
$EndComp
Text Label 9500 4350 0    60   ~ 0
5V0_P
$Comp
L CONN_01X01 P6
U 1 1 59FAD9F8
P 9050 4550
F 0 "P6" H 9600 4550 50  0000 C CNN
F 1 "TESTCLIP" H 9300 4550 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0000 C CNN
	1    9050 4550
	-1   0    0    1   
$EndComp
Text Label 9500 4550 0    60   ~ 0
5V0_N
$Comp
L CONN_01X01 P7
U 1 1 59FADAC6
P 9050 4750
F 0 "P7" H 9600 4750 50  0000 C CNN
F 1 "TESTCLIP" H 9300 4750 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 4750 50  0001 C CNN
F 3 "" H 9050 4750 50  0000 C CNN
	1    9050 4750
	-1   0    0    1   
$EndComp
Text Label 9500 4750 0    60   ~ 0
GND
$Comp
L CONN_01X01 P8
U 1 1 59FADCBE
P 9050 5050
F 0 "P8" H 9600 5050 50  0000 C CNN
F 1 "TESTCLIP" H 9300 5050 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 5050 50  0001 C CNN
F 3 "" H 9050 5050 50  0000 C CNN
	1    9050 5050
	-1   0    0    1   
$EndComp
Text Label 9500 5050 0    60   ~ 0
12V0_P
$Comp
L CONN_01X01 P9
U 1 1 59FADCC7
P 9050 5250
F 0 "P9" H 9600 5250 50  0000 C CNN
F 1 "TESTCLIP" H 9300 5250 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 5250 50  0001 C CNN
F 3 "" H 9050 5250 50  0000 C CNN
	1    9050 5250
	-1   0    0    1   
$EndComp
Text Label 9500 5250 0    60   ~ 0
12V0_N
$Comp
L CONN_01X01 P10
U 1 1 59FADDA3
P 9050 5450
F 0 "P10" H 9600 5450 50  0000 C CNN
F 1 "TESTCLIP" H 9300 5450 50  0000 C CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9050 5450 50  0001 C CNN
F 3 "" H 9050 5450 50  0000 C CNN
	1    9050 5450
	-1   0    0    1   
$EndComp
Text Label 9500 5450 0    60   ~ 0
GND
Text Label 2400 6000 2    60   ~ 0
12V0_P
Text Label 2400 6100 2    60   ~ 0
12V0_N
Text Label 2400 6500 2    60   ~ 0
12V0_P
Text Label 2400 6800 2    60   ~ 0
GND
NoConn ~ 3850 6800
NoConn ~ 3850 6900
$Comp
L C C11
U 1 1 59FAE8D7
P 4050 5850
F 0 "C11" H 4165 5896 50  0000 L CNN
F 1 "4.7 uF 10V" H 4165 5805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 4088 5700 50  0001 C CNN
F 3 "" H 4050 5850 50  0000 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 59FAEBC7
P 4050 6250
F 0 "C12" H 4165 6296 50  0000 L CNN
F 1 "4.7 uF 10V" H 4165 6205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 4088 6100 50  0001 C CNN
F 3 "" H 4050 6250 50  0000 C CNN
	1    4050 6250
	1    0    0    -1  
$EndComp
Text Label 4650 6000 0    60   ~ 0
5V0_P
Text Label 4650 6100 0    60   ~ 0
5V0_N
Text Label 3850 5700 2    60   ~ 0
GND
Text Label 3850 6400 2    60   ~ 0
GND
$Comp
L C C13
U 1 1 59FAF266
P 4200 6750
F 0 "C13" H 4315 6796 50  0000 L CNN
F 1 "0.01 uF" H 4315 6705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4238 6600 50  0001 C CNN
F 3 "" H 4200 6750 50  0000 C CNN
	1    4200 6750
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 59FAF400
P 4750 6650
F 0 "C14" H 4865 6696 50  0000 L CNN
F 1 "0.01 uF" H 4865 6605 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 4788 6500 50  0001 C CNN
F 3 "" H 4750 6650 50  0000 C CNN
	1    4750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2350 9850 2350
Wire Wire Line
	9750 2550 10000 2550
Wire Wire Line
	7100 2800 7250 2800
Wire Wire Line
	7250 2350 6750 2350
Wire Wire Line
	6450 2350 5300 2350
Wire Wire Line
	2200 2450 3750 2450
Connection ~ 2350 2450
Wire Wire Line
	2200 2350 3750 2350
Wire Wire Line
	2200 2350 2200 2300
Wire Wire Line
	2200 2300 2150 2300
Connection ~ 2350 2350
Wire Wire Line
	2200 2450 2200 2500
Wire Wire Line
	2200 2500 2150 2500
Wire Wire Line
	2350 2050 2000 2050
Wire Wire Line
	2000 2050 2000 2100
Wire Wire Line
	2000 2700 2000 2750
Wire Wire Line
	2000 2750 2350 2750
Wire Wire Line
	3600 1050 3750 1050
Wire Wire Line
	3650 1050 3650 1150
Wire Wire Line
	3650 1150 3750 1150
Connection ~ 3650 1050
Wire Wire Line
	3600 1450 3750 1450
Wire Wire Line
	3650 1450 3650 1550
Wire Wire Line
	3650 1550 3750 1550
Connection ~ 3650 1450
Wire Wire Line
	3600 1250 3750 1250
Wire Wire Line
	3650 1250 3650 1350
Wire Wire Line
	3650 1350 3750 1350
Connection ~ 3650 1250
Wire Wire Line
	3600 1750 3750 1750
Wire Wire Line
	3600 1850 3750 1850
Wire Wire Line
	3300 1750 3150 1750
Wire Wire Line
	3150 1850 3300 1850
Wire Wire Line
	3550 2750 3750 2750
Wire Wire Line
	3550 2850 3750 2850
Wire Wire Line
	3550 2950 3750 2950
Wire Wire Line
	3750 2050 3550 2050
Wire Wire Line
	900  850  2650 850 
Connection ~ 1050 850 
Connection ~ 1550 850 
Wire Wire Line
	900  1150 2650 1150
Connection ~ 1050 1150
Connection ~ 1550 1150
Wire Wire Line
	900  1450 2650 1450
Connection ~ 1050 1450
Connection ~ 1550 1450
Connection ~ 2100 850 
Connection ~ 2100 1150
Connection ~ 2100 1450
Wire Wire Line
	1750 4350 1600 4350
Wire Wire Line
	1700 4350 1700 4450
Wire Wire Line
	1700 4450 1600 4450
Connection ~ 1700 4350
Wire Wire Line
	1600 4250 2700 4250
Wire Wire Line
	1750 4900 1600 4900
Wire Wire Line
	1700 4900 1700 5000
Wire Wire Line
	1700 5000 1600 5000
Connection ~ 1700 4900
Wire Wire Line
	1600 4800 2700 4800
Wire Wire Line
	4050 4250 3900 4250
Wire Wire Line
	4050 4800 3900 4800
Wire Wire Line
	9250 3850 9500 3850
Wire Wire Line
	9250 4050 9500 4050
Wire Wire Line
	9250 4350 9500 4350
Wire Wire Line
	9250 4550 9500 4550
Wire Wire Line
	9250 4750 9500 4750
Wire Wire Line
	9250 5050 9500 5050
Wire Wire Line
	9250 5250 9500 5250
Wire Wire Line
	9250 5450 9500 5450
Wire Wire Line
	2400 6000 2650 6000
Wire Wire Line
	2400 6100 2650 6100
Wire Wire Line
	2550 6100 2550 6300
Wire Wire Line
	2550 6200 2650 6200
Connection ~ 2550 6100
Wire Wire Line
	2550 6300 2650 6300
Connection ~ 2550 6200
Wire Wire Line
	2400 6500 2650 6500
Wire Wire Line
	2650 6600 2550 6600
Wire Wire Line
	2550 6600 2550 6500
Connection ~ 2550 6500
Wire Wire Line
	2400 6800 2650 6800
Wire Wire Line
	2550 6800 2550 7000
Wire Wire Line
	2550 6900 2650 6900
Connection ~ 2550 6800
Wire Wire Line
	2550 7000 2650 7000
Connection ~ 2550 6900
Wire Wire Line
	3850 6000 4650 6000
Connection ~ 4050 6000
Wire Wire Line
	3850 6100 4650 6100
Connection ~ 4050 6100
Wire Wire Line
	3850 6400 4050 6400
Wire Wire Line
	3850 5700 4050 5700
Wire Wire Line
	3850 6500 4750 6500
Wire Wire Line
	3850 6600 4200 6600
$Comp
L C C10
U 1 1 59FAFB1D
P 4050 4950
F 0 "C10" H 4165 4996 50  0000 L CNN
F 1 "10 uF 25V" H 4165 4905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1210_CAP_NOSILK" H 4088 4800 50  0001 C CNN
F 3 "" H 4050 4950 50  0000 C CNN
	1    4050 4950
	1    0    0    -1  
$EndComp
Text Label 3950 5100 2    60   ~ 0
GND
Wire Wire Line
	3950 5100 4050 5100
$Comp
L C C9
U 1 1 59FAFDFF
P 4050 4400
F 0 "C9" H 4165 4446 50  0000 L CNN
F 1 "10 uF 25V" H 4165 4355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_1210_CAP_NOSILK" H 4088 4250 50  0001 C CNN
F 3 "" H 4050 4400 50  0000 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
Text Label 3950 4550 2    60   ~ 0
GND
Wire Wire Line
	3950 4550 4050 4550
Text Label 4200 7100 2    60   ~ 0
5V0_N
Wire Wire Line
	4200 7100 4200 6900
Text Label 4750 6950 0    60   ~ 0
5V0_P
Wire Wire Line
	4750 6950 4750 6800
$Comp
L INDUCTOR_PWROUT L1
U 1 1 59FB0E85
P 3600 4250
F 0 "L1" V 3445 4250 40  0000 C CNN
F 1 "BLM15PX471SN1D" V 3521 4250 40  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" H 3600 4250 60  0001 C CNN
F 3 "" H 3600 4250 60  0000 C CNN
	1    3600 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4250 3200 4250
$Comp
L INDUCTOR_PWROUT L2
U 1 1 59FB1384
P 3600 4800
F 0 "L2" V 3445 4800 40  0000 C CNN
F 1 "BLM15PX471SN1D" V 3521 4800 40  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" H 3600 4800 60  0001 C CNN
F 3 "" H 3600 4800 60  0000 C CNN
	1    3600 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4800 3200 4800
$EndSCHEMATC

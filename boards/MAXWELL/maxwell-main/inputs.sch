EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 15
Title "MAXWELL Main Board"
Date "2020-06-15"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1050 3500 1150 1900
U 5F0BA462
F0 "Pod Power" 50
F1 "podpower.sch" 50
F2 "3V3" I L 1050 3650 50 
F3 "12V0" I L 1050 3550 50 
F4 "GND" I L 1050 3750 50 
F5 "P0_12V0" O R 2200 3950 50 
F6 "P0_PRESENT" I L 1050 3950 50 
F7 "P1_PRESENT" I L 1050 4050 50 
F8 "P2_PRESENT" I L 1050 4150 50 
F9 "P3_PRESENT" I L 1050 4250 50 
F10 "P4_PRESENT" I L 1050 4350 50 
F11 "P5_PRESENT" I L 1050 4450 50 
F12 "P6_PRESENT" I L 1050 4550 50 
F13 "P7_PRESENT" I L 1050 4650 50 
F14 "P8_PRESENT" I L 1050 4750 50 
F15 "P9_PRESENT" I L 1050 4850 50 
F16 "P10_PRESENT" I L 1050 4950 50 
F17 "P11_PRESENT" I L 1050 5050 50 
F18 "P1_12V0" O R 2200 4050 50 
F19 "P2_12V0" O R 2200 4150 50 
F20 "P3_12V0" O R 2200 4250 50 
F21 "P4_12V0" O R 2200 4350 50 
F22 "P5_12V0" O R 2200 4450 50 
F23 "P6_12V0" O R 2200 4550 50 
F24 "P7_12V0" O R 2200 4650 50 
F25 "P8_12V0" O R 2200 4750 50 
F26 "P9_12V0" O R 2200 4850 50 
F27 "P10_12V0" O R 2200 4950 50 
F28 "P11_12V0" O R 2200 5050 50 
F29 "I2C_SDA" B L 1050 5250 50 
F30 "I2C_SCL" I L 1050 5350 50 
$EndSheet
$Comp
L xilinx-azonenberg:XC7Sx-FTGB196 U?
U 3 1 5F293D5C
P 9300 5800
AR Path="/5F049B6D/5F293D5C" Ref="U?"  Part="2" 
AR Path="/5F080E90/5F293D5C" Ref="U?"  Part="3" 
AR Path="/5EDD723A/5F0BA462/5F293D5C" Ref="U?"  Part="4" 
AR Path="/5EDD723A/5F293D5C" Ref="U?"  Part="3" 
F 0 "U?" H 9300 5750 50  0000 L CNN
F 1 "XC7S6-1FTGB196C" H 9300 5650 50  0000 L CNN
F 2 "" H 9300 5800 50  0001 C CNN
F 3 "" H 9300 5800 50  0001 C CNN
	3    9300 5800
	1    0    0    -1  
$EndComp
$Sheet
S 3500 3600 1050 1500
U 5F297DD1
F0 "IO FPGA" 50
F1 "iofpga.sch" 50
F2 "S7_QSPI_DQ0" B R 4550 3750 50 
F3 "S7_QSPI_DQ1" B R 4550 3850 50 
F4 "S7_QSPI_DQ2" B R 4550 3950 50 
F5 "S7_QSPI_DQ3" B R 4550 4050 50 
F6 "S7_QSPI_CS_N" I R 4550 3650 50 
$EndSheet
Text Label 9100 1950 2    50   ~ 0
S7_QSPI_CS_N
Text Label 9100 950  2    50   ~ 0
S7_QSPI_DQ0
Text Label 9100 1050 2    50   ~ 0
S7_QSPI_DQ1
Text Label 9100 1150 2    50   ~ 0
S7_QSPI_DQ2
Text Label 9100 1250 2    50   ~ 0
S7_QSPI_DQ3
$Sheet
S 1050 1300 1100 1500
U 5F2B9784
F0 "Left Pods" 50
F1 "leftpods.sch" 50
$EndSheet
$Sheet
S 2550 1300 1000 1500
U 5F2BB4CD
F0 "Right Pods" 50
F1 "rightpods.sch" 50
$EndSheet
Text Label 9100 1350 2    50   ~ 0
P0_UART_TX
Text Label 9100 1450 2    50   ~ 0
P0_UART_RX
Text HLabel 9100 3150 0    50   Input ~ 0
S7_CLK_P
Text HLabel 9100 3250 0    50   Input ~ 0
S7_CLK_N
Text Label 9100 1550 2    50   ~ 0
P1_UART_TX
Text Label 9100 1650 2    50   ~ 0
P1_UART_RX
Text HLabel 9100 3450 0    50   Input ~ 0
S7_SPI_CS_N
Text HLabel 9100 3350 0    50   Input ~ 0
S7_SPI_SCK
Text HLabel 9100 3550 0    50   Input ~ 0
S7_SPI_MOSI
Text HLabel 9100 3050 0    50   Output ~ 0
S7_SPI_MISO
Text Label 9100 1750 2    50   ~ 0
P2_UART_TX
Text Label 9100 1850 2    50   ~ 0
P2_UART_RX
Text Label 9100 2050 2    50   ~ 0
P3_UART_TX
Text Label 9100 2150 2    50   ~ 0
P3_UART_RX
Text Label 9100 2250 2    50   ~ 0
P4_UART_TX
Text Label 9100 2350 2    50   ~ 0
P4_UART_RX
Text Label 9100 2450 2    50   ~ 0
P5_UART_TX
Text Label 9100 2550 2    50   ~ 0
P5_UART_RX
Text Label 9100 2650 2    50   ~ 0
P6_UART_TX
Text Label 9100 2750 2    50   ~ 0
P6_UART_RX
Text Label 9100 2850 2    50   ~ 0
P7_UART_TX
Text Label 9100 2950 2    50   ~ 0
P7_UART_RX
Text Label 9100 3650 2    50   ~ 0
P8_UART_TX
Text Label 9100 3750 2    50   ~ 0
P8_UART_RX
Text Label 9100 3850 2    50   ~ 0
P9_UART_TX
Text Label 9100 3950 2    50   ~ 0
P9_UART_RX
Text Label 9100 4050 2    50   ~ 0
P10_UART_TX
Text Label 9100 4150 2    50   ~ 0
P10_UART_RX
Text Label 9100 4250 2    50   ~ 0
P11_UART_TX
Text Label 9100 4350 2    50   ~ 0
P11_UART_RX
$EndSCHEMATC

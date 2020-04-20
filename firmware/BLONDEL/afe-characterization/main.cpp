/***********************************************************************************************************************
*                                                                                                                      *
* STARSHIPRAIDER v0.1                                                                                                  *
*                                                                                                                      *
* Copyright (c) 2020 Andrew D. Zonenberg                                                                               *
* All rights reserved.                                                                                                 *
*                                                                                                                      *
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the     *
* following conditions are met:                                                                                        *
*                                                                                                                      *
*    * Redistributions of source code must retain the above copyright notice, this list of conditions, and the         *
*      following disclaimer.                                                                                           *
*                                                                                                                      *
*    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the       *
*      following disclaimer in the documentation and/or other materials provided with the distribution.                *
*                                                                                                                      *
*    * Neither the name of the author nor the names of any contributors may be used to endorse or promote products     *
*      derived from this software without specific prior written permission.                                           *
*                                                                                                                      *
* THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED   *
* TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL *
* THE AUTHORS BE HELD LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES        *
* (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR       *
* BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT *
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE       *
* POSSIBILITY OF SUCH DAMAGE.                                                                                          *
*                                                                                                                      *
***********************************************************************************************************************/

#include <stm32fxxx.h>
#include <peripheral/UART.h>
#include <peripheral/GPIO.h>
#include <peripheral/SPI.h>
#include "SCPIParser.h"
#include "LTC2664.h"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Entry point

UART* g_uart;
SCPIParser scpi;

int main()
{
	//Initialize the PLL
	//CPU clock = AHB clock = APB clock = 48 MHz
	RCCHelper::InitializePLLFromInternalOscillator(2, 12, 1, 1);

	//Initialize the UART
	GPIOPin uart_tx(&GPIOA, 9,	GPIOPin::MODE_PERIPHERAL, 1);
	GPIOPin uart_rx(&GPIOA, 10, GPIOPin::MODE_PERIPHERAL, 1);
	UART uart(&USART1, &USART1, 417);
	g_uart = &uart;

	//Enable RXNE interrupt vector (IRQ27)
	//TODO: better contants here
	volatile uint32_t* NVIC_ISER0 = (volatile uint32_t*)(0xe000e100);
	*NVIC_ISER0 = 0x8000000;

	//Initialize the LED and turn them all on
	GPIOPin led0(&GPIOB, 7, GPIOPin::MODE_OUTPUT);
	GPIOPin led1(&GPIOA, 5, GPIOPin::MODE_OUTPUT);
	GPIOPin led2(&GPIOA, 6, GPIOPin::MODE_OUTPUT);
	led0.Set(1);
	led1.Set(1);
	led2.Set(1);

	//Set up SPI bus at 12 MHz (APB/4)
	GPIOPin	spi_sck( &GPIOB, 3, GPIOPin::MODE_PERIPHERAL, 0);
	//GPIOPin spi_miso(&GPIOB, 4, GPIOPin::MODE_PERIPHERAL, 0);
	GPIOPin spi_mosi(&GPIOB, 5, GPIOPin::MODE_PERIPHERAL, 0);
	SPI spi(&SPI1, false, 4);

	//Set up DAC
	//NOTE: schematic for AFE characterization board is wrong and has CS# and LDAC swapped
	GPIOPin dac_rst(&GPIOA, 7, GPIOPin::MODE_OUTPUT);
	GPIOPin dac_cs(&GPIOA, 2, GPIOPin::MODE_OUTPUT);
	GPIOPin dac_ldac(&GPIOA, 3, GPIOPin::MODE_OUTPUT);
	LTC2664 dac(&spi, &dac_rst, &dac_cs, &dac_ldac);

	//Initialize SCPI stack
	scpi.Init(g_uart);

	//Main loop
	uint16_t code = 0;
	while(1)
	{
		//Process UART traffic
		scpi.Iteration();

		//Bump the DAC on VDAC1 (lane 1).
		code += 32;
		dac.SetCode(1, code);
	}

	return 0;
}
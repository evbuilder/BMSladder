/*
	Notes:
	Program written and compiled in Microchip studio V7.0.2542
	
	Fuse Configuration:
	
	BOD - Disabled, when in brown out, the power consumption goes to 100uA vs < 1uA in shutdown sleep mode.
	Reset Pin - Configured for GPIO mode (Note, this makes the chip no longer reprogrammable without getting hold of a 12V pulse programmer
	Watchdog - 8k cycles, 8.2 seconds, this code always runs, then sleeps and waits for the watchdog to trigger a reset, there is no "main loop" for power consumption optimization.
	Startup Time - 16ms
*/

#include <avr/io.h>
#include <stdbool.h>

#include "CellManagement.h"
#include "HardwareDefines.h"

#define F_CPU 3200000UL
#include "util/delay.h"

void InitializeIO(void)
{
	PORTA_PIN0CTRL = PORT_ISC_INPUT_DISABLE_gc;
	PORTA_DIR = BALANCE_PIN_MASK | TX_LED_PIN_MASK;
	PORTA_OUTSET = TX_LED_PIN_MASK; //Default LED state is off	
}

void InitializeBalancePWM()
{
	TCA0_SINGLE_PER = 1024;
	TCA0_SINGLE_CMP0 = 128; //12.5% duty cycle on the balance FET, period around 80ms
	TCA0_SINGLE_CTRLB = TCA_SINGLE_CMP0EN_bm | TCA_SINGLE_WGMODE_SINGLESLOPE_gc;
	TCA0_SINGLE_CTRLA = TCA_SINGLE_CLKSEL_DIV256_gc;
	TCA0_SINGLE_CTRLC = 0;
}

inline void IndicateFault(void)
{
	PORTA_OUTSET = REF2V5_ENABLE_REPURPOSED_AS_FAULT;
}

inline void IndicateNoFault(void)
{
	PORTA_OUTCLR = REF2V5_ENABLE_REPURPOSED_AS_FAULT;
}

inline void LedOn(void)
{
	PORTA_OUTCLR = TX_LED_PIN_MASK;
}

inline void LedOff(void)
{
	PORTA_OUTSET = TX_LED_PIN_MASK;
}

inline void ResetWatchdog(void)
{
	asm volatile(
	"WDR"
	);
}

void SleepDeep(void)
{
	SLPCTRL_CTRLA = SLPCTRL_SMODE_PDOWN_gc | SLPCTRL_SEN_bm;
	asm volatile(
	"SLEEP"
	);
}

void SleepIdle(void)
{
	SLPCTRL_CTRLA = SLPCTRL_SMODE_IDLE_gc | SLPCTRL_SEN_bm;
	asm volatile(
	"SLEEP"
	);
}

bool ConfigureFaultOutput(void)
{
	//Check the reset source, if it was a WDT, configure the Fault pin as GPIO output, if it was a POR we don't want to do this.
	//This gives us 8 seconds after connecting power to the board to be able to reprogram the device.
	if (RSTCTRL_RSTFR & RSTCTRL_WDRF_bm)
	{
		PORTA_DIRSET = REF2V5_ENABLE_REPURPOSED_AS_FAULT;
		return true;
	}
	return false;
}

void FlashLed(uint8_t numFlashes)
{
	while (numFlashes--)
	{
		ResetWatchdog();
		LedOn();
		_delay_ms(1);
		LedOff();
		if (numFlashes)
		{
			_delay_ms(500);
		}
	}
}

//void FlashVolts(uint32_t milliVolts)
//{
	//uint32_t wholeVolts = milliVolts / 1000;
	//uint32_t remainder = (milliVolts % 1000) / 100;
	//
	//FlashLed(wholeVolts);
	//_delay_ms(2000);
	//FlashLed(remainder);
//}

int main(void)
{
	ResetWatchdog();
	InitializeIO();
	InitializeBalancePWM();
	bool wasWatchdog = ConfigureFaultOutput();
	if(!wasWatchdog)
	{
		LedOn();
		while(1);
	}
	
	uint32_t cellVoltage;	
	cellStatus_t cellStatus = ManageCell(&cellVoltage);

	switch (cellStatus)
	{
		case CellStatusOverVoltage:
			IndicateFault();
			LedOn();
			SleepIdle();
			break;
		case CellStatusBalancing:
			//IndicateNoFault();
			IndicateFault(); //Fault output is going to be used to switch from CC to CV charge, so we want it high as soon as the first cell starts balancing
			FlashLed(2);
			SleepIdle();
			break;
		case CellStatusNormal:
			IndicateNoFault();
			FlashLed(1);
			break;
		case CellStatusUnderVoltage:
			//IndicateFault(); //Fault output is going to be used as a "overcharge indicator", so don't output fault condition for lower limit
			break;
	}

	SleepDeep();
}

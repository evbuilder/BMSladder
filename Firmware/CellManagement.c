#include <avr/io.h>
#include "CellManagement.h"

#include "adc.h"
#include "HardwareDefines.h"

#define OVERVOLTAGE_THRESHOLD_MILLIVOLTS 3650   //4150
#define BALANCE_THRESHOLD_MILLIVOLTS 3550       //4050
#define UNDERVOLTAGE_THRESHOLD_MILLIVOLTS 2800

/* 
	Power consumption with this code as pushed:
	Under Voltage @ 2.6V -> 2uA Average
	Running @ 3V -> 2.5uA Average
	Running @ 4V -> 2.6uA Average
	Balancing @ 4.1V -> Approximately 700mA with current settings
	Over voltage @ 4.3V -> Approximately 700mA with current settings
*/

inline void BalanceOn(bool highCurrent)
{
	if (highCurrent)
	{
		TCA0_SINGLE_CMP0 = 357; //768; //75% duty cycle on the balance FET, period around 80ms
		// 300mA @ 4.05V 4.05V/4.7R=0.862A, 0.3/0.862=0.348, 0.348*1024=357
	}
	TCA0_SINGLE_CTRLA |= TCA_SINGLE_ENABLE_bm;
}

inline void BalanceOff(void)
{
	TCA0_SINGLE_CTRLA &= ~TCA_SINGLE_ENABLE_bm;
	TCA0_SINGLE_CTRLC = 0;
}

uint32_t CellVoltage(void)
{
	//Read the value of the internal 1.1V reference using VCC as ADC reference. We are reading a known value of 1.1V, but actually trying to determine the value of the reference, which is VCC
	//ADC Counts = Vin/Vref * 1024;
	//Vref = (Vin*1024)/ADC Counts)
	//Vref in mV = ((Vin*1024)/ADC counts) * 1000mV
	
	//With Vin = 1.1V => Vref = 1126400/ADC Counts
	
	//Example:
	//Given Vcc = 3.895V
	//Vadc = 1.1/3.895 * 1024 = 289 counts
	//Vref = 1126400 / 289 = 3897mV

	InternalReferenceInit();
	ADC0Init();
	ADC0Enable();
	ADC0GetConversion(ADC_MUXPOS_INTREF_gc); //Disregard the first conversion after switching the ADC reference
	uint32_t cellVoltageMv = 1126400L / ADC0GetConversion(ADC_MUXPOS_INTREF_gc);
	ADC0Disable();
	return cellVoltageMv;
}

cellStatus_t ManageCell(uint32_t* cellVoltage)
{
	*cellVoltage = CellVoltage();

	if (*cellVoltage >= OVERVOLTAGE_THRESHOLD_MILLIVOLTS)
	{
		bool highCurrentBalance = true;
		BalanceOn(highCurrentBalance);
		return CellStatusOverVoltage;
	}

	if (*cellVoltage >= BALANCE_THRESHOLD_MILLIVOLTS)
	{
		bool highCurrentBalance = false;
		BalanceOn(highCurrentBalance);
		return CellStatusBalancing;
	}
	
	BalanceOff();

	if (*cellVoltage >= UNDERVOLTAGE_THRESHOLD_MILLIVOLTS)
	{
		return CellStatusNormal;
	}
	
	return CellStatusUnderVoltage;
}

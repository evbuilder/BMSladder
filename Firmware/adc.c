#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>
#include "adc.h"

void ADC0Init()
{

	ADC0.CTRLC = ADC_PRESC_DIV4_gc      /* CLK_PER divided by 4 */
				 | ADC_REFSEL_VDDREF_gc /* VDD Reference */
	             | (1 << ADC_SAMPCAP_bp); /* Sample Capacitance Selection: enabled for reference higher than 1V */


	ADC0.CTRLA = 1 << ADC_ENABLE_bp     /* ADC Enable: enabled */
	             | 0 << ADC_FREERUN_bp  /* ADC Freerun mode: disabled */
	             | ADC_RESSEL_10BIT_gc  /* 10-bit mode */
	             | 0 << ADC_RUNSTBY_bp; /* Run standby mode: disabled */
}

void InternalReferenceInit()
{
	VREF.CTRLA = VREF_ADC0REFSEL_1V1_gc;
	VREF.CTRLB = VREF_ADC0REFEN_bm; //Enable reference, even if nothing is requesting it.
}

void ADC0Enable()
{
	ADC0.CTRLA |= ADC_ENABLE_bm;
}

void ADC0Disable()
{
	ADC0.CTRLA &= ~ADC_ENABLE_bm;
}

void ADC0StartConversion(adc_0_channel_t channel)
{
	ADC0.MUXPOS  = channel;
	ADC0.COMMAND = ADC_STCONV_bm;
}

bool ADC0ConversionDone()
{
	return (ADC0.INTFLAGS & ADC_RESRDY_bm);
}

adc_result_t ADC0GetConversionResult(void)
{
	return (ADC0.RES);
}

adc_result_t ADC0GetConversion(adc_0_channel_t channel)
{
	adc_result_t res;

	ADC0StartConversion(channel);
	while (!ADC0ConversionDone())
	{
	}
	res = ADC0GetConversionResult();
	ADC0.INTFLAGS |= ADC_RESRDY_bm;
	return res;
}

#ifndef ADC_H_INCLUDED
#define ADC_H_INCLUDED

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*adc_irq_cb_t)(void);

/** Datatype for the result of the ADC conversion */
typedef uint16_t adc_result_t;

//* Analog channel selection */
typedef ADC_MUXPOS_t adc_0_channel_t;

void ADC0Init();
void InternalReferenceInit();
void ADC0Enable();
void ADC0Disable();
void ADC0StartConversion(adc_0_channel_t channel);
bool ADC0ConversionDone();
adc_result_t ADC0GetConversionResult(void);
adc_result_t ADC0GetConversion(adc_0_channel_t channel);

#ifdef __cplusplus
}
#endif

#endif

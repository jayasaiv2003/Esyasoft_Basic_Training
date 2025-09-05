#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD6
#define BUTTON_PIN PD2

int main(void){
    DDRD|=(1<<LED_PIN);
    DDRD&=~(1<<BUTTON_PIN);
    PORTD|=(1<<BUTTON_PIN);
    
    while(1)
    {
      if(PIND&(1<<BUTTON_PIN))
      {
        
        PORTD&= ~(1<<LED_PIN);
      }
      else{
        PORTD|=(1<<LED_PIN);
        _delay_ms(500);
        //LED ON
        //delay 500ms

        //LED OFF
        //delay 500ms
        PORTD&= ~(1<<LED_PIN);
        _delay_ms(500);
        
        
    }
    }
    return 0;
}

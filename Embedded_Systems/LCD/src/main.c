#include<aurdino.h>
#include <avr/io.h>
#include <util/delay.h>


#define D7 PD7
#define D6 PB0
#define D5 PB1
#define D4 PB2
#define ENABLE PB3
#define RS PB4

void lcd_pulse()
{
    Port|= (1<<ENABLE);
    _delay_ms(100);
    PortB&= ~(1<<ENABLE);
    _delay_ms(200);
}
void lcd_command(unsigned char cmd)
{
     PORTB & ~(1<<RS);
     if(cmd&0X10)
     {
        PORTB|=(1<<D4)
     }
     else
     {
        PORTB&=~(1<<D4);
     }
     if(cmd & 0X20) PORTB |=(1<<D5) else PORTB &= ~(1<<D5);
     if(cmd & 0X40) PORTB |=(1<<D6) else PORTB &= ~(1<<D6);
     if(cmd & 0X80) PORTD |=(1<<D7) else PORTD &= ~(1<<D7);
     lcd_pulse();
     if(cmd & 0X01) PORTB |=(1<<D4) else PORTB &= ~(1<<D4);
     if(cmd & 0X02) PORTB |=(1<<D5) else PORTB &= ~(1<<D5);
     if(cmd & 0X04) PORTB |=(1<<D6) else PORTB &= ~(1<<D6);
     if(cmd & 0X08) PORTD |=(1<<D6) else PORTD &= ~(1<<D6);
     lcd_pulse();
}

void lcd_init()
{
    _delay_ms(200);
    lcd_command(0X02);
    lcd_command(0X28);
    lcd_command(0X0C);
    lcd_command(0X01);
    lcd_command(0X06);
    _delay_ms(200);
}

void lcd_print()
{

}

int main(void)
{
    DDRB|=0XFF;
    DDRD|=(1<<D7);
    lcd_init;
    

     
}
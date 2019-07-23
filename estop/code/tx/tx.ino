#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <RF24_config.h>
RF24 radio(10, 7); // CE, CSN         
const byte address[6] = "000001";     //Byte of array representing the address. This is the address where we will send the data. This should be same on the receiving side.
int button_pin = 8;
int btn_led = 6;
int wireless_led = 5;
boolean button_state = 0;

void setup() {
  pinMode(button_pin, INPUT);
  
  digitalWrite(button_pin, HIGH);
  pinMode(btn_led, OUTPUT);
  pinMode(wireless_led, OUTPUT);
  radio.begin();                  //Starting the Wireless communication
  radio.openWritingPipe(address); //Setting the address where we will send the data
  radio.setPALevel(RF24_PA_MIN);  //You can set it as minimum or maximum depending on the distance between the transmitter and receiver.
  radio.stopListening();          //This sets the module as transmitter
}
 
void loop()
{
  button_state = digitalRead(button_pin);
  if(button_state)
    {
     digitalWrite(btn_led, HIGH);
    }
   else
    {
     digitalWrite(btn_led, LOW);
    }
  /*
  if(button_state == LOW)
  {
    const char text[] = "STOP";
    radio.write(&text, sizeof(text));                  //Sending the message to receiver
    digitalWrite(wireless_led, HIGH);
    delay(50);
    digitalWrite(wireless_led, LOW);
    digitalWrite(btn_led, LOW);
  }
  else
  {
    const char text[] = "GO";
    radio.write(&text, sizeof(text));                  //Sending the message to receiver 
    digitalWrite(wireless_led, HIGH);
    delay(50);
    digitalWrite(wireless_led, LOW);
    digitalWrite(btn_led, HIGH);
  }
  */
  if (radio.isChipConnected())
  {
    radio.write(&button_state, sizeof(button_state));  //Sending the message to receiver 
  }
  delay(50);
}

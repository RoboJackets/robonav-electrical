#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
RF24 radio(10, 7); // CE, CSN
const byte address[6] = "000001";
boolean button_state = false;
int btn_led = 6;
int wireless_led = 5;
int out_pin = 9;

void setup() {
  Serial.begin(9600);
  
  pinMode(btn_led, OUTPUT);
  pinMode(wireless_led, OUTPUT);
  pinMode(out_pin, OUTPUT);
  digitalWrite(out_pin, HIGH);
  
  radio.begin();
  radio.openReadingPipe(0, address);   //Setting the address at which we will receive the data
  radio.setPALevel(RF24_PA_MIN);       //You can set this as minimum or maximum depending on the distance between the transmitter and receiver.
  radio.startListening();              //This sets the module as receiver
}

void loop()
{
  /*
  if (radio.available())              //Looking for the data.
  {
    digitalWrite(wireless_led, HIGH);
    delay(50);
    digitalWrite(wireless_led, LOW);
    /*
    char text[32] = "";                 //Saving the incoming data
    radio.read(&text, sizeof(text));    //Reading the data
    */
    if(radio.available())
    {
      delay(50);
      radio.read(&button_state, sizeof(button_state));    //Reading the data
      if(button_state)
      {
       digitalWrite(btn_led, LOW);
       digitalWrite(out_pin, LOW);
      }
     else
      {
       digitalWrite(btn_led, HIGH);
       digitalWrite(out_pin, HIGH);
      }
    }
    /*
    digitalWrite(wireless_led, HIGH);
    delay(1000);
    digitalWrite(wireless_led, LOW);
    
    if(strcmp(text, "GO") == 0)
    {
      digitalWrite(btn_led, HIGH);
    }
    else if(strcmp(text, "STOP") == 0)
    {
      digitalWrite(btn_led, LOW);
    }
    
    if(button_state)
    {
      digitalWrite(btn_led, HIGH);
    }
    else
    {
      digitalWrite(btn_led, LOW);
    }
  delay(50);
  }
  digitalWrite(btn_led, HIGH);
  delay(50);
  digitalWrite(btn_led, LOW);
  */
  Serial.println(button_state);
  delay(100);
 } 

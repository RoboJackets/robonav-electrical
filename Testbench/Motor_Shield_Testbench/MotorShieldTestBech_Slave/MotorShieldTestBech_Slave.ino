#include "TinyWireS.h"

const int addr = 7;

const int output = 10;

uint8_t dataIn;
uint8_t n;

double f = 18;

void setup() 
{
  TinyWireS.begin(addr);
  TinyWireS.onReceive(receiveEvent);

  pinMode(output, OUTPUT);
}

void loop() 
{
  digitalWrite(output, HIGH);
  delay(f * 1000 / 2);
  digitalWrite(output, LOW);
  delay(f * 1000 / 2);
}

void receiveEvent(uint8_t num)
{
  dataIn = TinyWireS.receive();
  f = (double)dataIn / 100;
}

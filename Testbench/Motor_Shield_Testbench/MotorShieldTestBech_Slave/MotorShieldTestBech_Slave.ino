#include "TinyWireS.h"

const int addr = 8;

const int output = 6;

uint8_t dataIn;
uint8_t n;

double f = 0.00;

void setup() 
{
  TinyWireS.begin(addr);
  TinyWireS.onReceive(receiveEvent);
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

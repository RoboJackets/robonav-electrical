#include "TinyWireS.h"

const byte addr = 7;

const int output = 4;

uint8_t dataIn;

double f = 0;

void setup() 
{
  TinyWireS.begin(addr);

  pinMode(output, OUTPUT);
  tone(output, 9000);
}

void loop() 
{
  if (TinyWireS.available())
  {
    int r = TinyWireS.receive();
    noTone(output);
    tone(output, r * 100);
  }
}



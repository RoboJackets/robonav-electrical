#include <Wire.h>

const int addr = 8;

const int output = 7;

int f = 0;

void setup() 
{
  Wire.begin();
  Wire.onReceive(receiveEvent);
}

void loop() 
{
  digitalWrite(output, HIGH);
  delay(f * 1000 / 2);
  digitalWrite(output, LOW);
  delay(f * 1000 / 2);
}

void receiveEvent()
{
  while (Wire.available())
  {
    char c = Wire.read();
    f = f + c;
  }
  f = (int) f;
}

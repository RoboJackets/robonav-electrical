int main(){
  Serial.begin(9600);
  Serial.write((uint8_t)0); // Full stop on both motors
  Serial.write((uint8_t)64); // Stop on Motor 1;
  Serial.write((uint8_t)1); // Full reverse on Motor 1;
  Serial.write((uint8_t)127); // Full forward on Motor 1

  // The same goes for Motor two, instead they're for between 128 to 255, all stuff corresponds.
}


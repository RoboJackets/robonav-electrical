//int main(){
//  Serial.begin(9600);
////  Serial.write((uint8_t)0);
//  Serial.write((uint8_t)64); // Full stop on both motors
////  _delay_ms(1000);
////  Serial.write((uint8_t)80);
////  _delay_ms(100);
////  Serial.write((uint8_t)96);
////  _delay_ms(100);
////  Serial.write((uint8_t)111);
////  _delay_ms(100);
////  Serial.write((uint8_t)127);
////  _delay_ms(10000);
////  
////  Serial.write((uint8_t)64); // Stop on Motor 1;
////  Serial.write((uint8_t)1); // Full reverse on Motor 1;
////  Serial.write((uint8_t)127); // Full forward on Motor 1
//
//  // The same goes for Motor two, instead they're for between 128 to 255, all stuff corresponds.
//}

void setup(){
//  attachInterrupt(2,RISING);
//  pinMode(2,INPUT);
  pinMode(6,OUTPUT);
//  Serial.begin(9600);
//  _delay_us(1000);
//  Serial.write((uint8_t)127);
}

void loop(){
  analogWrite(6,125);
//  if (digitalRead(2) == HIGH){
//      Serial.write((uint8_t)64);
//  } else if (digitalRead(3) == HIGH) {
//      Serial.write((uint8_t)127);
//  }
}

/*
 * 
 * IGVC Diagnostic Board Code
 * 
 */
 
#include <SPI.h>
#include <SD.h>

// Variables Used for the SD Card
File Temp;
String TempData;
File CurrentSensor;
String CurrentSpeedData;
File LogicBoard;
String LogicBoardData;
File EstopStatus;
String EstopStatusData;

File myFile;

void setup()
{
 // Open serial communications and wait for port to open:
  Serial.begin(9600);
   while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }
  Serial.print("Initializing SD card...");
   pinMode(19, OUTPUT);
  if (!SD.begin(19)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");
}
  

void loop()
{
  // Temparature Sensor Data
  // open the file
  Temp = SD.open("Temparature Sensor Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (Temp) {
    Serial.print("Writing to Temparature Sensor Log.txt...");
    Temp.println("testing 1, 2, 3.");
  // close the file:
    Temp.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Temparature Sensor Log.txt");
  }

    //Current Sensor Data
    // open the file
  CurrentSensor = SD.open("Current Sensor Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (CurrentSensor) {
    Serial.print("Writing to Current Sensor Log.txt...");
    CurrentSensor.println("testing 1, 2, 3.");
  // close the file:
    CurrentSensor.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Current Sensor Log.txt");
  }

    // Logic Board Data Log
    // open the file
  LogicBoard = SD.open("Logic Board Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (LogicBoard) {
    Serial.print("Writing to Logic Board Log.txt...");
    LogicBoard.println("testing 1, 2, 3.");
  // close the file:
    LogicBoard.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Logic Board Log.txt");
  }

    // Estop Status Log
    // open the file
  EstopStatus = SD.open("Estop Status Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (myFile) {
    Serial.print("Writing to Estop Status Log.txt...");
    EstopStatus.println("testing 1, 2, 3.");
  // close the file:
    EstopStatus.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Estop Status Log.txt");
  }

    //
    // open the file
  myFile = SD.open("test.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (myFile) {
    Serial.print("Writing to test.txt...");
    myFile.println("testing 1, 2, 3.");
  // close the file:
    myFile.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
  }
}

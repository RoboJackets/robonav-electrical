
/*
TO DO:

1. SD Card Reading from can for all files
3. Radio Firmware 

*/


/*
 * 
 * IGVC Diagnostic Board Code
 * 
 */
 
#include <SPI.h>
#include <SD.h>
#include <Canbus.h>
#include <defaults.h>
#include <global.h>
#include <mcp2515.h>
#include <mcp2515_defs.h>

// Variables Used for the SD Card
String TimeFromStartup;
File Temp;
String TempData;
File CurrentSensor;
String CurrentSpeedData;                                                                                                                                                                                                                                                                                                                                                                      
File LogicBoard;
String LogicBoardData;
File EstopStatus;
String EstopStatusData;










void setup()
{
 // Open serial communications and wait for port to open:
  Serial.begin(9600);
   while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }

  //Initialize the SD Card for reading and writing
  Serial.print("Initializing SD card...");
  pinMode(19, OUTPUT);
  if (!SD.begin(19)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");
  
  //Initialize the CAN Modules
  Serial.println("CAN Read - Testing receival of CAN Bus message");  
  if(Canbus.init(CANSPEED_500))  //Initialise MCP2515 CAN controller at the specified speed
    Serial.println("CAN Init ok");
  else
    Serial.println("Can't init CAN");
}
  

void loop()
{

  //Enable SD Card
  digitalWrite(19, LOW);
  //Clear All Data
  String TempData = "";
  String CurrentSpeedData = "";                                                                                                                                                                                                                                                                                                                                                                      
  String LogicBoardData = "";
  String EstopStatusData = "";
  
  // Temparature Sensor Data
  
  //obtain data from CAN here
  tCAN message;
  if (mcp2515_check_message()) 
  {
    if (mcp2515_get_message(&message)) 
  {
        //if(message.id == 0x620)  //uncomment when you want to filter
             //{
               
               Serial.print("ID: ");
               Serial.print(message.id,HEX);
               Serial.print(", ");
               Serial.print("Data: ");
               Serial.print(message.header.length,DEC);
               for(int i=0;i<message.header.length;i++) 
                { 
                  Serial.print(message.data[i],HEX);
                  Serial.print(" ");
                  //TempData = TempData + message.data[i]
                }
               Serial.println("");
             //}
           }}

  TempData = "Test 1...2...3..";
  
  // open the file
  Temp = SD.open("Temparature Sensor Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (Temp) {
    Serial.print("Writing to Temparature Sensor Log.txt...");
    TimeFromStartup = String(millis());
    Temp.println("Time: " + TimeFromStartup + " Temparture(Celsius): ");
    Temp.println(TempData);
  // close the file:
    Temp.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Temparature Sensor Log.txt");
  }

    //Current Sensor Data

    //obtain data here
    CurrentSpeedData = "Test 1...2...3..";  
    
    // open the file
  CurrentSensor = SD.open("Current Sensor Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (CurrentSensor) {
    Serial.print("Writing to Current Sensor Log.txt...");
    TimeFromStartup = String(millis());
    CurrentSensor.println("Time: " + TimeFromStartup + " Current(Amps): ");
    CurrentSensor.println(CurrentSpeedData);
  // close the file:
    CurrentSensor.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Current Sensor Log.txt");
  }

    // Logic Board Data Log

    //obtain data here
    LogicBoardData = "Test 1...2...3..";
    
    // open the file
  LogicBoard = SD.open("Logic Board Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (LogicBoard) {
    Serial.print("Writing to Logic Board Log.txt...");
    TimeFromStartup = String(millis());
    LogicBoard.println("Time: " + TimeFromStartup + " MbedStatus: ");
    LogicBoard.println(LogicBoardData);
  // close the file:
    LogicBoard.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Logic Board Log.txt");
  }

    // Estop Status Log

    //obtain data here
    EstopStatusData = "Test 1...2...3..";
    
    // open the file
  EstopStatus = SD.open("Estop Status Log.txt", FILE_WRITE);  
  // if the file opened okay, write to it:
  if (myFile) {
    Serial.print("Writing to Estop Status Log.txt...");
    TimeFromStartup = String(millis());
    EstopStatus.println("Time: " + TimeFromStartup + " EstopStatus: ");
    EstopStatus.println(EstopStatusData);
  // close the file:
    EstopStatus.close();
    Serial.println("done.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening Estop Status Log.txt");
  }
  
  //Disable SD Card
  digitalWrite(19, HIGH);
}

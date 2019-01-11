#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-01-11 21:52:44

#include "Arduino.h"
#include <SPI.h>
#include <RH_RF95.h>
#include <Wire.h>
#include <MechaQMC5883.h>
#include <TinyGPS++.h>
#include "config.h"
#include "peripheral.h"
#include "DFRobotDFPlayerMini.h"

static void parseGps(unsigned long ms) ;
String get_gpsNhead(double *lat, double *lon, float *heading,  uint16_t ms) ;
uint8_t rec_gpsNhead(double *lat, double *lon, float *heading) ;
void reCal_heading(int declDeg, int declMin, char declDir, float *heading) ;
void dfPlay(uint8_t fileN, uint8_t *playerStatus) ;
uint8_t translateDistance(float distance) ;
void dfDistance(uint8_t distance) ;
void setup() ;
void loop() ;

#include "lora_GPS_Compass_Board1.ino"


#endif

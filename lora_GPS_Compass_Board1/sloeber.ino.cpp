#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-01-01 18:35:41

#include "Arduino.h"
#include <SPI.h>
#include <RH_RF95.h>
#include <Wire.h>
#include <MechaQMC5883.h>
#include <TinyGPS++.h>
#include "config.h"

static void parseGps(unsigned long ms) ;
String get_gpsNhead(double *lat, double *lon, float *heading,  uint16_t ms) ;
void rec_gpsNhead(double *lat, double *lon, float *heading) ;
void ledInit() ;
void ledOut(uint8_t segment, uint8_t led, uint8_t state) ;
void headingDistanceToLed(float distance, float heading) ;
void reCal_heading(int declDeg, int declMin, char declDir, float *heading) ;
void setup() ;
void loop() ;

#include "lora_GPS_Compass_Board1.ino"


#endif

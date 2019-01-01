#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-01-01 18:48:23

#include "Arduino.h"
#include "Arduino.h"
#include <Arduino.h>
#include <Wire.h>
#include <HMC5883L_Simple.h>
#include "stdio.h"
#include <TinyGPS++.h>
#include <SPI.h>
#include <RH_RF95.h>
#include "config.h"

void rec_gpsNhead(double *lat, double *lon, float *heading) ;
static void parseGps(unsigned long ms) ;
String get_gpsNhead(double *lat, double *lon, float *heading,  uint16_t ms) ;
void ledInit() ;
void ledOut(uint8_t segment, uint8_t led, uint8_t state) ;
void headingDistanceToLed(float distance, float heading) ;
void setup() ;
void loop() ;

#include "lora_GPS_Compass_Board0.ino"


#endif

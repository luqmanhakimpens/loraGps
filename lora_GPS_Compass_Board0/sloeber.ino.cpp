#ifdef __IN_ECLIPSE__
//This is a automatic generated file
//Please do not modify this file
//If you touch this file your change will be overwritten during the next build
//This file has been generated on 2019-01-13 11:39:22

#include "Arduino.h"
#include "Arduino.h"
#include <Arduino.h>
#include <Wire.h>
#include <HMC5883L_Simple.h>
#include "stdio.h"
#include <TinyGPS++.h>
#include <SPI.h>
#include <RH_RF95.h>
#include "peripheral.h"
#include "config.h"
#include "DFRobotDFPlayerMini.h"

uint8_t rec_gpsNhead(double *lat, double *lon, float *heading) ;
static void parseGps(unsigned long ms) ;
String get_gpsNhead(double *lat, double *lon, float *heading,  uint16_t ms) ;
void dfPlay(uint8_t fileN, uint8_t *playerStatus) ;
uint8_t translateDistance(float distance) ;
void dfDistance(uint8_t distance) ;
void setup() ;
void loop() ;

#include "lora_GPS_Compass_Board0.ino"


#endif

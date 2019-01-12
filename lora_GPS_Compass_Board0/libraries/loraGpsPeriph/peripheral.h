#include "Arduino.h"

void ledInit();
void ledOut(uint8_t segment, uint8_t led, uint8_t state);
void headingDistanceToLed(float distance, float heading);
double haversine_distance(double latHome,double lonHome,double latDest,double lonDest);
void ledStatusHandler(float lt, float ln, uint8_t con, float dist, float head);
float calc_Bearing(float lat, float lon, float rlat, float rlon);
float pointHeading(float heading, float bearing);
void IO_Init();
uint8_t getBtn();

#include "Arduino.h"
#include <Arduino.h>
#include <Wire.h>
#include <HMC5883L_Simple.h>
#include "stdio.h"
#include <TinyGPS++.h>
#include <SPI.h>
#include <RH_RF95.h>

static const uint32_t GPSBaud = 9600;

TinyGPSPlus gps;
HMC5883L_Simple Compass;
RH_RF95 rf95;

#define declinationDegree	17
#define declinationMinute	35

bool newData = false;
unsigned long age, date, time, chars = 0;
int year;
byte month, day, hour, minute, second, hundredths;
float flat=-7.305873,  flon=112.797678;
char buff[100];
double lat, lon;
float heading;
int led = 13;


static void parseGps(unsigned long ms)
{
	unsigned long start = millis();
	do
	{
		while (Serial1.available())
			gps.encode(Serial1.read());
	}
	while (millis() - start < ms);
}
String get_gpsNhead(double *lat, double *lon, float *heading,  uint16_t ms)
{

/*	printInt(gps.satellites.value(), gps.satellites.isValid(), 5);
	printFloat(gps.hdop.hdop(), gps.hdop.isValid(), 6, 1);
	printFloat(gps.location.lat(), gps.location.isValid(), 11, 6);
	printFloat(gps.location.lng(), gps.location.isValid(), 12, 6);
	printInt(gps.location.age(), gps.location.isValid(), 5);
	printDateTime(gps.date, gps.time);
	printFloat(gps.altitude.meters(), gps.altitude.isValid(), 7, 2);
	printFloat(gps.course.deg(), gps.course.isValid(), 7, 2);
	printFloat(gps.speed.kmph(), gps.speed.isValid(), 6, 2);
	printStr(gps.course.isValid() ? TinyGPSPlus::cardinal(gps.course.deg()) : "*** ", 6);*/

/*	Serial.print(gps.location.lat());
	Serial.print(gps.location.lng());*/

	parseGps(ms);

	double lat_t=gps.location.lat();
	double lon_t=gps.location.lng();
	double head_t=Compass.GetHeadingDegrees();

	*lat=lat_t;
	*lon=lon_t;
	*heading=head_t;

	return  "(" + String(lat_t,6) + "," +  String(lon_t,6) +") #" + String(head_t,2);
}

void setup()
{
	Serial.begin(115200);
	Serial1.begin(GPSBaud);
	Wire.begin();
	Compass.SetDeclination(declinationDegree, declinationMinute, 'E');
	Compass.SetSamplingMode(COMPASS_SINGLE);
	Compass.SetScale(COMPASS_SCALE_130);
	Compass.SetOrientation(COMPASS_HORIZONTAL_X_NORTH);

	pinMode(led, OUTPUT);
	while (!Serial) ; // Wait for serial port to be available
	if (!rf95.init())Serial.println("init failed");
	else Serial.println("\n\nrf95 init complete");
}
void loop()
{
	Serial.println(get_gpsNhead(&lat,&lon,&heading,100));

	char data[50];
	get_gpsNhead(&lat,&lon,&heading,100).toCharArray(data, 50);

	rf95.send((uint8_t*)data, sizeof(data));
	rf95.waitPacketSent();
}

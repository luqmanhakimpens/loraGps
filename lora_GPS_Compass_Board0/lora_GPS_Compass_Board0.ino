#include "Arduino.h"
#include <Arduino.h>
#include <Wire.h>
#include <HMC5883L_Simple.h>
#include "stdio.h"
#include <TinyGPS++.h>
#include <SPI.h>
#include <RH_RF95.h>
#include "config.h"
static const uint32_t GPSBaud = 9600;

TinyGPSPlus gps;
HMC5883L_Simple Compass;
RH_RF95 rf95;



bool newData = false;
unsigned long age, date, time, chars = 0;
int year;
byte month, day, hour, minute, second, hundredths;
float flat=-7.305873,  flon=112.797678;
char buff[100];
double lat, lon;
float heading;



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

	char str_buff[200];
	String retVal="";

	parseGps(ms);

	double lat_t=gps.location.lat();
	double lon_t=gps.location.lng();
	double head_t=Compass.GetHeadingDegrees();

	*lat=lat_t;
	*lon=lon_t;
	*heading=head_t;

	uint32_t decPlace_lat= (lat_t - int(lat_t))*1000000;
	uint32_t decPlace_lon= (lon_t - int(lon_t))*1000000;
	uint32_t decPlace_hd= (head_t - int(head_t))*1000;

	sprintf(str_buff,"%04d.%06lu,%04d.%06lu #%03d.%03lu",
			(int)lat_t,decPlace_lat, (int)lon_t,decPlace_lon, (int)head_t,decPlace_hd);

	//Serial.print(str_buff);
	retVal=str_buff;

	return retVal;
	//return  "(" + String(lat_t,6) + "," +  String(lon_t,6) +") #" + String(head_t,2);
}
void ledInit()
{
	pinMode(led_board,OUTPUT);

	pinMode(led_0,OUTPUT);
	pinMode(led_1,OUTPUT);
	pinMode(led_2,OUTPUT);
	pinMode(led_3,OUTPUT);
	pinMode(led_4,OUTPUT);
	pinMode(led_5,OUTPUT);
	pinMode(led_6,OUTPUT);
	pinMode(led_7,OUTPUT);

	pinMode(comA,OUTPUT);
	pinMode(comB,OUTPUT);
	pinMode(comC,OUTPUT);

	pinMode(led_alarm,OUTPUT);
	pinMode(led_run,OUTPUT);
	pinMode(led_gps,OUTPUT);
	pinMode(led_connect,OUTPUT);

	Serial.print("led init");
}
void ledOut(uint8_t segment, uint8_t led, uint8_t state)
{
	if(segment==ledStatus)
	{
		digitalWrite(led,state);
	}
	else
	{
		digitalWrite(segment,state);
		digitalWrite(led,state);
	}

}
void headingDistanceToLed(float distance, float heading)
{
	uint8_t dis=distanceFar;

	if (distance < 100)dis=distanceMid;
	if (distance < 50)dis=distanceClose;

	ledOut(dis, led_0, LOW);
	ledOut(dis, led_1, LOW);
	ledOut(dis, led_2, LOW);
	ledOut(dis, led_3, LOW);
	ledOut(dis, led_4, LOW);
	ledOut(dis, led_5, LOW);
	ledOut(dis, led_6, LOW);
	ledOut(dis, led_7, LOW);

	if(heading > 337.5 || heading < 22.5) //0
		ledOut(dis, led_1, HIGH);

	else if(heading > 22.5 && heading < 67.5) //45
		ledOut(dis, led_2, HIGH);

	else if(heading > 67.5 && heading < 112.5) //90
		ledOut(dis, led_3, HIGH);

	else if(heading > 112.5 && heading < 157.5) //135
		ledOut(dis, led_4, HIGH);

	else if(heading > 157.5 && heading < 202.5) //180
		ledOut(dis, led_5, HIGH);

	else if(heading > 202.5 && heading < 247.5) //225
		ledOut(dis, led_6, HIGH);

	else if(heading > 247.5 && heading < 292.5) //270
		ledOut(dis, led_7, HIGH);

	else if(heading > 292.5 && heading < 337.5)
		ledOut(dis, led_0, HIGH); //315

	//delay(30);
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
	ledInit();

	while (!Serial) ; // Wait for serial port to be available
	if (!rf95.init())Serial.println("init failed");
	else Serial.println("\n\nrf95 init complete");

	ledOut(comA, led_4, HIGH);
	ledOut(ledStatus, led_alarm, HIGH);
	delay(2000);
	ledOut(ledStatus, led_alarm, LOW);
}
void loop()
{
	Serial.println(get_gpsNhead(&lat,&lon,&heading,10));

	char data[50];
	get_gpsNhead(&lat,&lon,&heading,10).toCharArray(data, 50);

	rf95.send((uint8_t*)data, sizeof(data));
	rf95.waitPacketSent();

	headingDistanceToLed(120, heading);
}

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

#define disconnect 	0
#define connect 	1

static const uint32_t GPSBaud = 9600;

TinyGPSPlus gps;
HMC5883L_Simple Compass;
RH_RF95 rf95;
DFRobotDFPlayerMini myDFPlayer;

bool newData = false;
unsigned long age, date, time, chars = 0;
int year;
byte month, day, hour, minute, second, hundredths;
float flat=-7.305873,  flon=112.797678;
char buff[100];

double lat=0, lon=0;
double rec_lat=0, rec_lon=0;
float rec_hd=0;
float heading=0;

uint8_t recCount,conStatus;

uint8_t rec_gpsNhead(double *lat, double *lon, float *heading)
{
	uint8_t retVal=0;
	if (rf95.available())
	{
		// Should be a message for us now
		uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
		uint8_t len = sizeof(buf);

		if (rf95.recv(buf, &len))
		{
			digitalWrite(led_board, HIGH);

			String rec=(char*)buf;

			*lat = ::atof(rec.substring(0,rec.indexOf(',')).c_str());
			*lon = ::atof(rec.substring(rec.indexOf(',')+1,rec.indexOf('#')).c_str());
			*heading  = ::atof(rec.substring(rec.indexOf('#')+1).c_str());

			//Serial.print((char*)buf);
			//Serial.print(" RSSI: ");
			//Serial.println(rf95.lastRssi(), DEC);

/*			Serial.print("rec_lat: ");
			Serial.print(rec_lat,5);
			Serial.print("  rec_lon: ");
			Serial.print(rec_lon,5);
			Serial.print("  rec_hd: ");
			Serial.println(rec_hd,3);*/

			//      RH_RF95::printBuffer("request: ", buf, len);
			//Serial.print("got data: ");


			///Serial.println(rec.substring(0, rec.indexOf('.')));

	// Send a reply
	//      uint8_t data[] = "And hello back to you";
	//      rf95.send(data, sizeof(data));
	//      rf95.waitPacketSent();
	//      Serial.println("Sent a reply");
			digitalWrite(led_board, LOW);
			retVal=1;
		}
		else
		{
			Serial.println("recv failed");
			retVal=0;
		}
	}

	return retVal;
}

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

	retVal=str_buff;

	//return retVal;
	return   String(lat_t,6) + "," +  String(lon_t,6) + " #" + String(head_t,2);
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
	else Serial.println("\n\nrf95 init complete(board0)");

/*	if (!myDFPlayer.begin(Serial2))
	{  //Use softwareSerial to communicate with mp3.
	    Serial.println(F("Unable to begin:"));
	    Serial.println(F("1.Please recheck the connection!"));
	    Serial.println(F("2.Please insert the SD card!"));
	    while(true);
	}*/

	Serial.println(F("DFPlayer Mini online."));

    myDFPlayer.setTimeOut(500);

	ledOut(comA, led_4, HIGH);
	ledOut(ledStatus, led_alarm, HIGH);
	delay(2000);
	ledOut(ledStatus, led_alarm, LOW);

}

void loop()
{
	//Serial.println(get_gpsNhead(&lat,&lon,&heading,10));
	static unsigned long timer = millis();

	if (millis() - timer > 5000)
	{
		timer = millis();
		if(!recCount)conStatus=disconnect;
		else
		{
			conStatus=connect;
			recCount=0;
		}
	}

	char data[50];
	get_gpsNhead(&lat,&lon,&heading,10).toCharArray(data, 50);
	if(rec_gpsNhead(&rec_lat, &rec_lon, &rec_hd))recCount++;

	rf95.send((uint8_t*)data, sizeof(data));
	rf95.waitPacketSent(2000);
	rf95.setModeRx();

	float distance = haversine_distance(lat, lon, rec_lat, rec_lon);
	float bearing=calc_Bearing(lat, lon, rec_lat, rec_lon);
	float pointheading = pointHeading(heading, bearing);

	String str = String(lat,6) + "," + String(lon,6) + " #" + String(heading,2) + " to " +
				 String(rec_lat,6) + "," + String(rec_lon,6) + " #" + String(rec_hd,2) +
				 " d: " + String(distance,3) + " b: " + String(bearing,2) + " p: " + String(pointheading,2);

	Serial.println(str);

	ledStatusHandler(lat, lon, conStatus, distance, pointheading);
	delay(100);

}


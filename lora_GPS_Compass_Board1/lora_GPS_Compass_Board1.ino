// rf95_server.pde
// -*- mode: C++ -*-
// Example sketch showing how to create a simple messageing server
// with the RH_RF95 class. RH_RF95 class does not provide for addressing or
// reliability, so you should only use RH_RF95  if you do not need the higher
// level messaging abilities.
// It is designed to work with the other example rf95_client
// Tested with Anarduino MiniWirelessLoRa, Rocket Scream Mini Ultra Pro with
// the RFM95W, Adafruit Feather M0 with RFM95

#include <SPI.h>
#include <RH_RF95.h>
#include <Wire.h>
#include <MechaQMC5883.h>
#include <TinyGPS++.h>
#include "config.h"
#include "peripheral.h"

#define disconnect 	0
#define connect 	1

MechaQMC5883 qmc;
TinyGPSPlus gps;
RH_RF95 rf95;

int led = 13;

double lat=0, lon=0;
double rec_lat=0, rec_lon=0;
float rec_hd=0;
float heading=0;

uint8_t recCount,conStatus;
static const uint32_t GPSBaud = 9600;

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
	//double head_t=Compass.GetHeadingDegrees();

	uint16_t x, y, z;
	float head_t;
	qmc.read(&x, &y, &z,&head_t);
	reCal_heading(declinationDegree, declinationMinute, 'E', &head_t);

	*lat=lat_t;
	*lon=lon_t;
	*heading=head_t;

	uint32_t decPlace_lat= (lat_t - int(lat_t))*1000000;
	uint32_t decPlace_lon= (lon_t - int(lon_t))*1000000;
	uint32_t decPlace_hd=  (head_t - int(head_t))*1000;

	sprintf(str_buff,"%04d.%06lu,%04d.%06lu #%03d.%03lu",
			(int)lat_t,decPlace_lat, (int)lon_t,decPlace_lon, (int)head_t,decPlace_hd);

	retVal=str_buff;

	//return retVal;
	return   String(lat_t,6) + "," +  String(lon_t,6) + " #" + String(head_t,2);
	//return  "(" + String(lat_t,6) + "," +  String(lon_t,6) +") #" + String(head,2);
}

uint8_t rec_gpsNhead(double *lat, double *lon, float *heading)
{
	uint8_t retVal=0;

	if (rf95.available())
	{
		//Serial.print("receive  ");
		// Should be a message for us now
		uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
		uint8_t len = sizeof(buf);

		if (rf95.recv(buf, &len))
		{
			digitalWrite(led, HIGH);

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
			digitalWrite(led, LOW);
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
void reCal_heading(int declDeg, int declMin, char declDir, float *heading)
{
	float declination_offset_radians=0;
	float headingRad= *heading * (M_PI/180);

	switch(declDir)
	{
	// North and East are positive
		case 'E':
		declination_offset_radians = ( declDeg + (1/60 * declMin)) * (M_PI / 180);
		break;

	// South and West are negative
		case 'W':
		declination_offset_radians =  0 - (( declDeg + (1/60 * declMin) ) * (M_PI / 180));
		break;
	}

	headingRad+=declination_offset_radians;

	if(headingRad < 0)
		headingRad += 2*M_PI;

	// Check for wrap due to addition of declination.
	if(headingRad > 2*M_PI)
		headingRad -= 2*M_PI;

	// Convert radians to degrees for readability.
	*heading = headingRad * 180/M_PI;
}

void setup()
{
  // Rocket Scream Mini Ultra Pro with the RFM95W only:
  // Ensure serial flash is not interfering with radio communication on SPI bus
//  pinMode(4, OUTPUT);
//  digitalWrite(4, HIGH);

  pinMode(led, OUTPUT);
  Serial.begin(115200);
  Serial1.begin(GPSBaud);
  Wire.begin();
  while (!Serial) ; // Wait for serial port to be available
  if (!rf95.init())
    Serial.println("init failed");
  else Serial.println("init complete(board1)");

  Wire.begin();
  qmc.init();
  ledInit();
  // Defaults after init are 434.0MHz, 13dBm, Bw = 125 kHz, Cr = 4/5, Sf = 128chips/symbol, CRC on

  // The default transmitter power is 13dBm, using PA_BOOST.
  // If you are using RFM95/96/97/98 modules which uses the PA_BOOST transmitter pin, then
  // you can set transmitter powers from 5 to 23 dBm:
//  driver.setTxPower(23, false);
  // If you are using Modtronix inAir4 or inAir9,or any other module which uses the
  // transmitter RFO pins and not the PA_BOOST pins
  // then you can configure the power transmitter power for -1 to 14 dBm and with useRFO true.
  // Failure to do that will result in extremely low transmit powers.
//  driver.setTxPower(14, true);
}
void loop()
{
	static unsigned long timer = millis();

	if (millis() - timer > 5000)
	{
		timer = millis();
		if(!recCount)
		{
			conStatus=disconnect;
			rec_lat=0;
			rec_lon=0;
			rec_hd=0;
		}
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

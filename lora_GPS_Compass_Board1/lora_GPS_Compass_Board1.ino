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


MechaQMC5883 qmc;
TinyGPSPlus gps;
// Singleton instance of the radio driver
RH_RF95 rf95;
//RH_RF95 rf95(5, 2); // Rocket Scream Mini Ultra Pro with the RFM95W
//RH_RF95 rf95(8, 3); // Adafruit Feather M0 with RFM95

// Need this on Arduino Zero with SerialUSB port (eg RocketScream Mini Ultra Pro)
//#define Serial SerialUSB

int led = 13;
double lat, lon;
float heading;
double rec_lat,rec_lon,rec_hd;

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

	parseGps(ms);

	double lat_t=gps.location.lat();
	double lon_t=gps.location.lng();
	//double head_t=Compass.GetHeadingDegrees();

	*lat=lat_t;
	*lon=lon_t;

	uint16_t x, y, z;
	float head;
	qmc.read(&x, &y, &z,&head);
	reCal_heading(declinationDegree, declinationMinute, 'E', &head);

	*heading=head;


	return  "(" + String(lat_t,6) + "," +  String(lon_t,6) +") #" + String(head,2);
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
  else Serial.print("init complete");

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
	///Serial.print("_my data: ");
	//Serial.println(get_gpsNhead(&lat,&lon,&heading,100));
	delay(500);

	if (rf95.available())
	{
		// Should be a message for us now
		uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
		uint8_t len = sizeof(buf);
		if (rf95.recv(buf, &len))
		{
			String rec=(char*)buf;

			rec_lat = ::atof(rec.substring(0,rec.indexOf(',')).c_str());
			rec_lon = ::atof(rec.substring(rec.indexOf(',')+1,rec.indexOf('#')).c_str());
			rec_hd  = ::atof(rec.substring(rec.indexOf('#')+1).c_str());

			Serial.print((char*)buf);
			Serial.print(" RSSI: ");
			Serial.println(rf95.lastRssi(), DEC);

			Serial.print("rec_lat: ");
			Serial.print(rec_lat,5);
			Serial.print("  rec_lon: ");
			Serial.print(rec_lon,5);
			Serial.print("  rec_hd: ");
			Serial.println(rec_hd,3);

			digitalWrite(led, HIGH);
			//      RH_RF95::printBuffer("request: ", buf, len);
			//Serial.print("got data: ");


			///Serial.println(rec.substring(0, rec.indexOf('.')));

	// Send a reply
	//      uint8_t data[] = "And hello back to you";
	//      rf95.send(data, sizeof(data));
	//      rf95.waitPacketSent();
	//      Serial.println("Sent a reply");
			digitalWrite(led, LOW);
		}
		else
		{
			Serial.println("recv failed");
		}
	}

	headingDistanceToLed(120, rec_hd);
}

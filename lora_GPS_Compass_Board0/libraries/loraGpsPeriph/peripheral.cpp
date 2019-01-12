#include "peripheral.h"
#include "config.h"
#include "math.h"

void IO_Init()
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

	pinMode(inp0,INPUT_PULLUP);
	pinMode(inp1,INPUT_PULLUP);

	Serial.print("IO init");
}
void ledOut(uint8_t segment, uint8_t led, uint8_t state)
{
	if(segment==ledStatus)
	{
		digitalWrite(led,state);
	}
	else
	{
		digitalWrite(distanceFar,LOW);
		digitalWrite(distanceMid,LOW);
		digitalWrite(distanceClose,LOW);

		if(segment==distanceSoFar)segment=distanceFar;

		digitalWrite(segment,state);
		digitalWrite(led,state);
	}
}
void headingDistanceToLed(float distance, float heading)
{
	uint8_t dis=distanceSoFar;

	if (distance < 100)dis=distanceFar;
	if (distance < 50)dis=distanceMid;
	if (distance < 25)dis=distanceClose;

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
double haversine_distance(double latHome,double lonHome,double latDest,double lonDest)
{
    double a,c,distance;
    double pi = 3.141592653589793;
    int R=6377;

    double latHomeTmp = (pi / 180) * (latHome);
    double latDestTmp = (pi / 180) * (latDest);

    double dlong = (pi / 180) * (lonDest - lonHome);
    double dlati = (pi / 180) * (latDest - latHome);

    a = sin (dlati / 2.0) * sin (dlati / 2.0) +
        cos (latHomeTmp) * cos (latDestTmp) * sin (dlong / 2.0) * sin (dlong / 2.0);
    c = 2 * atan2 (sqrt (a), sqrt (1 - a));
    distance = R * c;			//(where R is the radius of the Earth)

    return distance;
}
float calc_Bearing(float lat, float lon, float rlat, float rlon)
{
	float headingDegrees=0;

	float x=rlat-lat;
	float y=rlon-lon;

	float heading=atan2((y),(x));

	if(heading < 0)
		heading += 2*M_PI;

	// Check for wrap due to addition of declination.
	if(heading > 2*M_PI)
		heading -= 2*M_PI;


	headingDegrees = heading * 180/M_PI;
	return headingDegrees;
}
float pointHeading(float heading, float bearing)
{
	float pointheading = bearing - heading;
	if (pointheading < 0) pointheading+=360;
	return pointheading;
}
void ledStatusHandler(float lt, float ln, uint8_t con, float dist, float head)
{
	uint8_t stat=0;

	if(true)ledOut(ledStatus, led_run, HIGH);

	if(con)
	{
		ledOut(ledStatus, led_connect, HIGH);
		stat++;
	}
	else ledOut(ledStatus, led_connect, LOW);

	if(lt!=0.0 && ln!=0.0)
	{
		ledOut(ledStatus, led_gps, HIGH);
		stat++;
	}
	else ledOut(ledStatus, led_gps, LOW);

	if(stat==2)headingDistanceToLed(dist*1000, head);

	if(dist<0.025)ledOut(ledStatus, led_alarm, HIGH);
	else ledOut(ledStatus, led_alarm, LOW);
}
uint8_t getBtn()
{
	uint8_t ret=noBtn;
	if(!digitalRead(inp0))
	{
		while(digitalRead(inp0))delay(2);
		ret=btn0;
	}
	else if(!digitalRead(inp1))
	{
		while(digitalRead(inp1))delay(2);
		ret=btn1;
	}
	return ret;
}

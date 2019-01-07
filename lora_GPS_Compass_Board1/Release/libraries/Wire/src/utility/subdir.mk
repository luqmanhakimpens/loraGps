################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src\utility\twi.c 

C_DEPS += \
.\libraries\Wire\src\utility\twi.c.d 

LINK_OBJ += \
.\libraries\Wire\src\utility\twi.c.o 


# Each subdirectory must supply rules for building sources it contributes
libraries\Wire\src\utility\twi.c.o: D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src\utility\twi.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



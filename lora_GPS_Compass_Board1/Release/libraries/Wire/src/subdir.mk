################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src\Wire.cpp 

LINK_OBJ += \
.\libraries\Wire\src\Wire.cpp.o 

CPP_DEPS += \
.\libraries\Wire\src\Wire.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\Wire\src\Wire.cpp.o: D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src\Wire.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -I"D:\ARDUINO\Arduino\libraries\DFRobotDFPlayerMini-1.0.3" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



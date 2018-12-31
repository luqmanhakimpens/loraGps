################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src/utility/twi.c 

C_DEPS += \
./libraries/Wire/src/utility/twi.c.d 

LINK_OBJ += \
./libraries/Wire/src/utility/twi.c.o 


# Each subdirectory must supply rules for building sources it contributes
libraries/Wire/src/utility/twi.c.o: /home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src/utility/twi.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



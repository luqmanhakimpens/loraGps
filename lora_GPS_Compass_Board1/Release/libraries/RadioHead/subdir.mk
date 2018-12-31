################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHCRC.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHDatagram.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHEncryptedDriver.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHGenericDriver.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHGenericSPI.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHHardwareSPI.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHMesh.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHNRFSPIDriver.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHReliableDatagram.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHRouter.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHSPIDriver.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHSoftwareSPI.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_ASK.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_CC110.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_E32.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_MRF89.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF24.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF51.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF905.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF22.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF24.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF69.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF95.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_Serial.cpp \
/home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_TCP.cpp 

LINK_OBJ += \
./libraries/RadioHead/RHCRC.cpp.o \
./libraries/RadioHead/RHDatagram.cpp.o \
./libraries/RadioHead/RHEncryptedDriver.cpp.o \
./libraries/RadioHead/RHGenericDriver.cpp.o \
./libraries/RadioHead/RHGenericSPI.cpp.o \
./libraries/RadioHead/RHHardwareSPI.cpp.o \
./libraries/RadioHead/RHMesh.cpp.o \
./libraries/RadioHead/RHNRFSPIDriver.cpp.o \
./libraries/RadioHead/RHReliableDatagram.cpp.o \
./libraries/RadioHead/RHRouter.cpp.o \
./libraries/RadioHead/RHSPIDriver.cpp.o \
./libraries/RadioHead/RHSoftwareSPI.cpp.o \
./libraries/RadioHead/RH_ASK.cpp.o \
./libraries/RadioHead/RH_CC110.cpp.o \
./libraries/RadioHead/RH_E32.cpp.o \
./libraries/RadioHead/RH_MRF89.cpp.o \
./libraries/RadioHead/RH_NRF24.cpp.o \
./libraries/RadioHead/RH_NRF51.cpp.o \
./libraries/RadioHead/RH_NRF905.cpp.o \
./libraries/RadioHead/RH_RF22.cpp.o \
./libraries/RadioHead/RH_RF24.cpp.o \
./libraries/RadioHead/RH_RF69.cpp.o \
./libraries/RadioHead/RH_RF95.cpp.o \
./libraries/RadioHead/RH_Serial.cpp.o \
./libraries/RadioHead/RH_TCP.cpp.o 

CPP_DEPS += \
./libraries/RadioHead/RHCRC.cpp.d \
./libraries/RadioHead/RHDatagram.cpp.d \
./libraries/RadioHead/RHEncryptedDriver.cpp.d \
./libraries/RadioHead/RHGenericDriver.cpp.d \
./libraries/RadioHead/RHGenericSPI.cpp.d \
./libraries/RadioHead/RHHardwareSPI.cpp.d \
./libraries/RadioHead/RHMesh.cpp.d \
./libraries/RadioHead/RHNRFSPIDriver.cpp.d \
./libraries/RadioHead/RHReliableDatagram.cpp.d \
./libraries/RadioHead/RHRouter.cpp.d \
./libraries/RadioHead/RHSPIDriver.cpp.d \
./libraries/RadioHead/RHSoftwareSPI.cpp.d \
./libraries/RadioHead/RH_ASK.cpp.d \
./libraries/RadioHead/RH_CC110.cpp.d \
./libraries/RadioHead/RH_E32.cpp.d \
./libraries/RadioHead/RH_MRF89.cpp.d \
./libraries/RadioHead/RH_NRF24.cpp.d \
./libraries/RadioHead/RH_NRF51.cpp.d \
./libraries/RadioHead/RH_NRF905.cpp.d \
./libraries/RadioHead/RH_RF22.cpp.d \
./libraries/RadioHead/RH_RF24.cpp.d \
./libraries/RadioHead/RH_RF69.cpp.d \
./libraries/RadioHead/RH_RF95.cpp.d \
./libraries/RadioHead/RH_Serial.cpp.d \
./libraries/RadioHead/RH_TCP.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/RadioHead/RHCRC.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHCRC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHDatagram.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHDatagram.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHEncryptedDriver.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHEncryptedDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHGenericDriver.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHGenericDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHGenericSPI.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHGenericSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHHardwareSPI.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHHardwareSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHMesh.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHMesh.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHNRFSPIDriver.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHNRFSPIDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHReliableDatagram.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHReliableDatagram.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHRouter.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHRouter.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHSPIDriver.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHSPIDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RHSoftwareSPI.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RHSoftwareSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_ASK.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_ASK.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_CC110.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_CC110.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_E32.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_E32.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_MRF89.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_MRF89.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_NRF24.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF24.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_NRF51.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF51.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_NRF905.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_NRF905.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_RF22.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF22.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_RF24.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF24.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_RF69.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF69.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_RF95.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_RF95.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_Serial.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_Serial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/RadioHead/RH_TCP.cpp.o: /home/honeybrew/dev-envi/Arduino/libraries/RadioHead/RH_TCP.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/home/honeybrew/dev-envi/sloeber//arduinoPlugin/packages/arduino/tools/avr-gcc/5.4.0-atmel3.6.1-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/cores/arduino" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/variants/mega" -I"/home/honeybrew/dev-envi/Arduino/libraries/HMC5883L_Simple" -I"/home/honeybrew/dev-envi/Arduino/libraries/RadioHead" -I"/home/honeybrew/dev-envi/Arduino/libraries/TinyGPSPlus-master/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/SPI/src" -I"/home/honeybrew/dev-envi/sloeber/arduinoPlugin/packages/arduino/hardware/avr/1.6.23/libraries/Wire/src" -I"/home/honeybrew/dev-envi/Arduino/libraries/Mecha_QMC5883L-master" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



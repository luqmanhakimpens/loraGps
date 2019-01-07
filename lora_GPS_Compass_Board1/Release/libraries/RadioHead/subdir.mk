################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\ARDUINO\Arduino\libraries\RadioHead\RHCRC.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHDatagram.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHEncryptedDriver.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHGenericDriver.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHGenericSPI.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHHardwareSPI.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHMesh.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHNRFSPIDriver.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHReliableDatagram.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHRouter.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHSPIDriver.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RHSoftwareSPI.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_ASK.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_CC110.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_E32.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_MRF89.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF24.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF51.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF905.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF22.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF24.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF69.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF95.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_Serial.cpp \
D:\ARDUINO\Arduino\libraries\RadioHead\RH_TCP.cpp 

LINK_OBJ += \
.\libraries\RadioHead\RHCRC.cpp.o \
.\libraries\RadioHead\RHDatagram.cpp.o \
.\libraries\RadioHead\RHEncryptedDriver.cpp.o \
.\libraries\RadioHead\RHGenericDriver.cpp.o \
.\libraries\RadioHead\RHGenericSPI.cpp.o \
.\libraries\RadioHead\RHHardwareSPI.cpp.o \
.\libraries\RadioHead\RHMesh.cpp.o \
.\libraries\RadioHead\RHNRFSPIDriver.cpp.o \
.\libraries\RadioHead\RHReliableDatagram.cpp.o \
.\libraries\RadioHead\RHRouter.cpp.o \
.\libraries\RadioHead\RHSPIDriver.cpp.o \
.\libraries\RadioHead\RHSoftwareSPI.cpp.o \
.\libraries\RadioHead\RH_ASK.cpp.o \
.\libraries\RadioHead\RH_CC110.cpp.o \
.\libraries\RadioHead\RH_E32.cpp.o \
.\libraries\RadioHead\RH_MRF89.cpp.o \
.\libraries\RadioHead\RH_NRF24.cpp.o \
.\libraries\RadioHead\RH_NRF51.cpp.o \
.\libraries\RadioHead\RH_NRF905.cpp.o \
.\libraries\RadioHead\RH_RF22.cpp.o \
.\libraries\RadioHead\RH_RF24.cpp.o \
.\libraries\RadioHead\RH_RF69.cpp.o \
.\libraries\RadioHead\RH_RF95.cpp.o \
.\libraries\RadioHead\RH_Serial.cpp.o \
.\libraries\RadioHead\RH_TCP.cpp.o 

CPP_DEPS += \
.\libraries\RadioHead\RHCRC.cpp.d \
.\libraries\RadioHead\RHDatagram.cpp.d \
.\libraries\RadioHead\RHEncryptedDriver.cpp.d \
.\libraries\RadioHead\RHGenericDriver.cpp.d \
.\libraries\RadioHead\RHGenericSPI.cpp.d \
.\libraries\RadioHead\RHHardwareSPI.cpp.d \
.\libraries\RadioHead\RHMesh.cpp.d \
.\libraries\RadioHead\RHNRFSPIDriver.cpp.d \
.\libraries\RadioHead\RHReliableDatagram.cpp.d \
.\libraries\RadioHead\RHRouter.cpp.d \
.\libraries\RadioHead\RHSPIDriver.cpp.d \
.\libraries\RadioHead\RHSoftwareSPI.cpp.d \
.\libraries\RadioHead\RH_ASK.cpp.d \
.\libraries\RadioHead\RH_CC110.cpp.d \
.\libraries\RadioHead\RH_E32.cpp.d \
.\libraries\RadioHead\RH_MRF89.cpp.d \
.\libraries\RadioHead\RH_NRF24.cpp.d \
.\libraries\RadioHead\RH_NRF51.cpp.d \
.\libraries\RadioHead\RH_NRF905.cpp.d \
.\libraries\RadioHead\RH_RF22.cpp.d \
.\libraries\RadioHead\RH_RF24.cpp.d \
.\libraries\RadioHead\RH_RF69.cpp.d \
.\libraries\RadioHead\RH_RF95.cpp.d \
.\libraries\RadioHead\RH_Serial.cpp.d \
.\libraries\RadioHead\RH_TCP.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\RadioHead\RHCRC.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHCRC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHDatagram.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHDatagram.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHEncryptedDriver.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHEncryptedDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHGenericDriver.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHGenericDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHGenericSPI.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHGenericSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHHardwareSPI.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHHardwareSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHMesh.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHMesh.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHNRFSPIDriver.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHNRFSPIDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHReliableDatagram.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHReliableDatagram.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHRouter.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHRouter.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHSPIDriver.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHSPIDriver.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RHSoftwareSPI.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RHSoftwareSPI.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_ASK.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_ASK.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_CC110.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_CC110.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_E32.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_E32.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_MRF89.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_MRF89.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_NRF24.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF24.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_NRF51.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF51.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_NRF905.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_NRF905.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_RF22.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF22.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_RF24.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF24.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_RF69.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF69.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_RF95.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_RF95.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_Serial.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_Serial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\RadioHead\RH_TCP.cpp.o: D:\ARDUINO\Arduino\libraries\RadioHead\RH_TCP.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR     -I"D:\ARDUINO\hardware\arduino\avr\cores\arduino" -I"D:\ARDUINO\hardware\arduino\avr\variants\mega" -I"D:\ARDUINO\Arduino\libraries\HMC5883L_Simple" -I"D:\ARDUINO\Arduino\libraries\RadioHead" -I"D:\ARDUINO\Arduino\libraries\TinyGPSPlus-master\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\SPI\src" -I"D:\ARDUINO\hardware\arduino\avr\libraries\Wire\src" -I"D:\ARDUINO\Arduino\libraries\Mecha_QMC5883L-master" -I"D:\SLOEBER\extLib\loraGpsPeriph" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



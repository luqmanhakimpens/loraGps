################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries\loraGpsPeriph\subdir.mk
-include libraries\Wire\src\utility\subdir.mk
-include libraries\Wire\src\subdir.mk
-include libraries\TinyGPSPlus-master\src\subdir.mk
-include libraries\SPI\src\subdir.mk
-include libraries\RadioHead\subdir.mk
-include libraries\Mecha_QMC5883L-master\subdir.mk
-include libraries\HMC5883L_Simple\subdir.mk
-include core\core\subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
D:\SLOEBER\WORKSPACE_SLOEBER\loraGps\lora_GPS_Compass_Board1\Release\arduino.ar \

ELF += \
lora_GPS_Compass_Board1.elf \

HEX += \
lora_GPS_Compass_Board1.hex \


# All Target
all: lora_GPS_Compass_Board1

# Tool invocations
lora_GPS_Compass_Board1: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-size" -A "D:/SLOEBER/WORKSPACE_SLOEBER/loraGps/lora_GPS_Compass_Board1/Release/lora_GPS_Compass_Board1.elf"
	@echo 'Finished building target: $@'
	@echo ' '

D:\SLOEBER\WORKSPACE_SLOEBER\loraGps\lora_GPS_Compass_Board1\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-gcc-ar" rcs     D:/SLOEBER/WORKSPACE_SLOEBER/loraGps/lora_GPS_Compass_Board1/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

lora_GPS_Compass_Board1.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"D:\SLOEBER\arduinoPlugin\packages\arduino\tools\avr-gcc\4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -Wall -Wextra -Os -Wl,--gc-sections,--relax -mmcu=atmega2560  -o "D:/SLOEBER/WORKSPACE_SLOEBER/loraGps/lora_GPS_Compass_Board1/Release/lora_GPS_Compass_Board1.elf"   $(LINK_OBJ)   D:/SLOEBER/WORKSPACE_SLOEBER/loraGps/lora_GPS_Compass_Board1/Release/arduino.ar  "-LD:/SLOEBER/WORKSPACE_SLOEBER/loraGps/lora_GPS_Compass_Board1/Release" -lm
	@echo 'Finished building: $@'
	@echo ' '

lora_GPS_Compass_Board1.hex: $(ELF)
	@echo 'Do all objcopy commands'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents

-include ..\makefile.targets

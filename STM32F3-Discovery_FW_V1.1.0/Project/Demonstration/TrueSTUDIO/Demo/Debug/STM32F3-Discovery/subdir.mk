################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery_l3gd20.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery_lsm303dlhc.c 

OBJS += \
./STM32F3-Discovery/stm32f3_discovery.o \
./STM32F3-Discovery/stm32f3_discovery_l3gd20.o \
./STM32F3-Discovery/stm32f3_discovery_lsm303dlhc.o 

C_DEPS += \
./STM32F3-Discovery/stm32f3_discovery.d \
./STM32F3-Discovery/stm32f3_discovery_l3gd20.d \
./STM32F3-Discovery/stm32f3_discovery_lsm303dlhc.d 


# Each subdirectory must supply rules for building sources it contributes
STM32F3-Discovery/stm32f3_discovery.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32F3-Discovery/stm32f3_discovery.d" -MT"STM32F3-Discovery/stm32f3_discovery.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32F3-Discovery/stm32f3_discovery_l3gd20.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery_l3gd20.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32F3-Discovery/stm32f3_discovery_l3gd20.d" -MT"STM32F3-Discovery/stm32f3_discovery_l3gd20.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32F3-Discovery/stm32f3_discovery_lsm303dlhc.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Utilities/STM32F3_Discovery/stm32f3_discovery_lsm303dlhc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32F3-Discovery/stm32f3_discovery_lsm303dlhc.d" -MT"STM32F3-Discovery/stm32f3_discovery_lsm303dlhc.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



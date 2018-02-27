################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/hw_config.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/main.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/stm32f30x_it.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/system_stm32f30x.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_desc.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_endp.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_istr.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_prop.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_pwr.c 

OBJS += \
./User/hw_config.o \
./User/main.o \
./User/stm32f30x_it.o \
./User/system_stm32f30x.o \
./User/usb_desc.o \
./User/usb_endp.o \
./User/usb_istr.o \
./User/usb_prop.o \
./User/usb_pwr.o 

C_DEPS += \
./User/hw_config.d \
./User/main.d \
./User/stm32f30x_it.d \
./User/system_stm32f30x.d \
./User/usb_desc.d \
./User/usb_endp.d \
./User/usb_istr.d \
./User/usb_prop.d \
./User/usb_pwr.d 


# Each subdirectory must supply rules for building sources it contributes
User/hw_config.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/hw_config.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/hw_config.d" -MT"User/hw_config.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/main.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/main.d" -MT"User/main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/stm32f30x_it.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/stm32f30x_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/stm32f30x_it.d" -MT"User/stm32f30x_it.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/system_stm32f30x.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/system_stm32f30x.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/system_stm32f30x.d" -MT"User/system_stm32f30x.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/usb_desc.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_desc.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/usb_desc.d" -MT"User/usb_desc.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/usb_endp.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_endp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/usb_endp.d" -MT"User/usb_endp.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/usb_istr.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_istr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/usb_istr.d" -MT"User/usb_istr.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/usb_prop.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_prop.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/usb_prop.d" -MT"User/usb_prop.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

User/usb_pwr.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Project/Demonstration/usb_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"User/usb_pwr.d" -MT"User/usb_pwr.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



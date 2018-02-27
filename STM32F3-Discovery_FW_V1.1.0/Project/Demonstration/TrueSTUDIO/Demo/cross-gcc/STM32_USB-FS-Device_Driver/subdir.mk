################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_core.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_init.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_int.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_mem.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_regs.c \
C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_sil.c 

OBJS += \
./STM32_USB-FS-Device_Driver/usb_core.o \
./STM32_USB-FS-Device_Driver/usb_init.o \
./STM32_USB-FS-Device_Driver/usb_int.o \
./STM32_USB-FS-Device_Driver/usb_mem.o \
./STM32_USB-FS-Device_Driver/usb_regs.o \
./STM32_USB-FS-Device_Driver/usb_sil.o 

C_DEPS += \
./STM32_USB-FS-Device_Driver/usb_core.d \
./STM32_USB-FS-Device_Driver/usb_init.d \
./STM32_USB-FS-Device_Driver/usb_int.d \
./STM32_USB-FS-Device_Driver/usb_mem.d \
./STM32_USB-FS-Device_Driver/usb_regs.d \
./STM32_USB-FS-Device_Driver/usb_sil.d 


# Each subdirectory must supply rules for building sources it contributes
STM32_USB-FS-Device_Driver/usb_core.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_core.d" -MT"STM32_USB-FS-Device_Driver/usb_core.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32_USB-FS-Device_Driver/usb_init.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_init.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_init.d" -MT"STM32_USB-FS-Device_Driver/usb_init.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32_USB-FS-Device_Driver/usb_int.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_int.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_int.d" -MT"STM32_USB-FS-Device_Driver/usb_int.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32_USB-FS-Device_Driver/usb_mem.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_mem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_mem.d" -MT"STM32_USB-FS-Device_Driver/usb_mem.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32_USB-FS-Device_Driver/usb_regs.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_regs.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_regs.d" -MT"STM32_USB-FS-Device_Driver/usb_regs.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

STM32_USB-FS-Device_Driver/usb_sil.o: C:/Users/XianP/AppData/Local/myfile/STM32F3Discovery/ST\ discovery/STM32F3-Discovery_FW_V1.1.0/STM32F3-Discovery_FW_V1.1.0/Libraries/STM32_USB-FS-Device_Driver/src/usb_sil.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -MMD -MP -MF"STM32_USB-FS-Device_Driver/usb_sil.d" -MT"STM32_USB-FS-Device_Driver/usb_sil.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



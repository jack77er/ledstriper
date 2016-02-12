################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11xx.c \
../src/crp.c \
../src/ledDriver_v3_lpc.c \
../src/sysinit.c 

OBJS += \
./src/cr_startup_lpc11xx.o \
./src/crp.o \
./src/ledDriver_v3_lpc.o \
./src/sysinit.o 

C_DEPS += \
./src/cr_startup_lpc11xx.d \
./src/crp.d \
./src/ledDriver_v3_lpc.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_LPCOPEN -D__LPC11XX__ -D__REDLIB__ -I"C:\Users\Jacob\Dropbox\Development\led_stripe_controller\workspace\ledDriver_v3_lpc\inc" -I"C:\Users\Jacob\Dropbox\Development\led_stripe_controller\workspace\lpc_chip_11cxx_lib\inc" -I"C:\Users\Jacob\Dropbox\Development\led_stripe_controller\workspace\nxp_lpcxpresso_11c24_board_lib\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



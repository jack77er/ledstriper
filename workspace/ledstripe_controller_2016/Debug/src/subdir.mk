################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/cr_startup_lpc11uxx.c \
../src/crp.c \
../src/main.c \
../src/sysinit.c 

S_SRCS += \
../src/aeabi_romdiv_patch.s 

OBJS += \
./src/aeabi_romdiv_patch.o \
./src/cr_startup_lpc11uxx.o \
./src/crp.o \
./src/main.o \
./src/sysinit.o 

C_DEPS += \
./src/cr_startup_lpc11uxx.d \
./src/crp.d \
./src/main.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_LPCOPEN -D__LPC11UXX__ -D__REDLIB__ -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\ledstripe_controller_2016\inc" -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\nxp_lpcxpresso_11c24_board_lib\inc" -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\lpc_chip_11cxx_lib\inc" -g3 -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -DCORE_M0 -D__USE_LPCOPEN -D__LPC11UXX__ -D__REDLIB__ -DCHIP_LPC11UXX -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\ledstripe_controller_2016\inc" -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\nxp_lpcxpresso_11c24_board_lib\inc" -I"D:\DB\Dropbox\Development\led_stripe_controller\workspace\lpc_chip_11cxx_lib\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



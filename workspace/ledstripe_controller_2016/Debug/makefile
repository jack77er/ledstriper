################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: ledstripe_controller_2016.axf

# Tool invocations
ledstripe_controller_2016.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"D:\DB\Dropbox\Development\led_stripe_controller\workspace\nxp_lpcxpresso_11c24_board_lib\Debug" -L"D:\DB\Dropbox\Development\led_stripe_controller\workspace\lpc_chip_11cxx_lib\Debug" -Xlinker -Map="ledstripe_controller_2016.map" -Xlinker --gc-sections -mcpu=cortex-m0 -mthumb -T "ledstripe_controller_2016_Debug.ld" -o "ledstripe_controller_2016.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) ledstripe_controller_2016.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "ledstripe_controller_2016.axf"; # arm-none-eabi-objcopy -v -O binary "ledstripe_controller_2016.axf" "ledstripe_controller_2016.bin" ; # checksum -p LPC11U14_201 -d "ledstripe_controller_2016.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

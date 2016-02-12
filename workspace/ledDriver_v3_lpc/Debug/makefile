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
all: ledDriver_v3_lpc.axf

# Tool invocations
ledDriver_v3_lpc.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\Jacob\Dropbox\Development\led_stripe_controller\workspace\lpc_chip_11cxx_lib\Debug" -L"C:\Users\Jacob\Dropbox\Development\led_stripe_controller\workspace\nxp_lpcxpresso_11c24_board_lib\Debug" -Xlinker -Map="ledDriver_v3_lpc.map" -Xlinker --gc-sections -mcpu=cortex-m0 -mthumb -T "ledDriver_v3_lpc_Debug.ld" -o "ledDriver_v3_lpc.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) ledDriver_v3_lpc.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "ledDriver_v3_lpc.axf"; # arm-none-eabi-objcopy -v -O binary "ledDriver_v3_lpc.axf" "ledDriver_v3_lpc.bin" ; # checksum -p LPC1114_302 -d "ledDriver_v3_lpc.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

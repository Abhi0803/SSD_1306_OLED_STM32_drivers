################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include OLED_Drivers/Src/subdir.mk
-include Drivers/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
stm32f4xx1306_oled_drivers.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
stm32f4xx1306_oled_drivers.list \


# All Target
all: stm32f4xx1306_oled_drivers.elf secondary-outputs

# Tool invocations
stm32f4xx1306_oled_drivers.elf: $(OBJS) $(USER_OBJS) D:\Desktop\Dev\Windows_Dev\Projects\OLED_1306_STM32_drivers\stm32f4xx1306_oled_drivers\STM32F407VGTX_FLASH.ld
	arm-none-eabi-gcc -o "stm32f4xx1306_oled_drivers.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\Desktop\Dev\Windows_Dev\Projects\OLED_1306_STM32_drivers\stm32f4xx1306_oled_drivers\STM32F407VGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="stm32f4xx1306_oled_drivers.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

stm32f4xx1306_oled_drivers.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "stm32f4xx1306_oled_drivers.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

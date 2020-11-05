################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f407vgtx.s 

C_SRCS += \
../Startup/syscalls.c \
../Startup/sysmem.c 

OBJS += \
./Startup/startup_stm32f407vgtx.o \
./Startup/syscalls.o \
./Startup/sysmem.o 

C_DEPS += \
./Startup/syscalls.d \
./Startup/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"
Startup/syscalls.o: ../Startup/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Startup/syscalls.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Startup/sysmem.o: ../Startup/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Startup/sysmem.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"


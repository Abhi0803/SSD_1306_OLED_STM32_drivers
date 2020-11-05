################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../OLED_Drivers/Src/fonts.c \
../OLED_Drivers/Src/ssd1306.c \
../OLED_Drivers/Src/test.c 

OBJS += \
./OLED_Drivers/Src/fonts.o \
./OLED_Drivers/Src/ssd1306.o \
./OLED_Drivers/Src/test.o 

C_DEPS += \
./OLED_Drivers/Src/fonts.d \
./OLED_Drivers/Src/ssd1306.d \
./OLED_Drivers/Src/test.d 


# Each subdirectory must supply rules for building sources it contributes
OLED_Drivers/Src/fonts.o: ../OLED_Drivers/Src/fonts.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OLED_Drivers/Src/fonts.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
OLED_Drivers/Src/ssd1306.o: ../OLED_Drivers/Src/ssd1306.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OLED_Drivers/Src/ssd1306.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
OLED_Drivers/Src/test.o: ../OLED_Drivers/Src/test.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OLED_Drivers/Src/test.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"


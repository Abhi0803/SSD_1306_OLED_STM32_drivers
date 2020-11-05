################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/201_I2C_Master_Tx_Testing.c 

OBJS += \
./Src/201_I2C_Master_Tx_Testing.o 

C_DEPS += \
./Src/201_I2C_Master_Tx_Testing.d 


# Each subdirectory must supply rules for building sources it contributes
Src/201_I2C_Master_Tx_Testing.o: ../Src/201_I2C_Master_Tx_Testing.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -DDEBUG -c -I../Inc -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/Drivers/Inc" -I"D:/Desktop/Dev/Windows_Dev/Projects/OLED_1306_STM32_drivers/stm32f4xx1306_oled_drivers/OLED_Drivers/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/201_I2C_Master_Tx_Testing.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"


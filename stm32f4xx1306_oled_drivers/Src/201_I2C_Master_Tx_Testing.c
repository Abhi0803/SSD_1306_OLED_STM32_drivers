/*
 * 201_I2C_Master_Tx_Testing.c
 *
 *  Created on: Oct 8, 2020
 *      Author: jhaab
 */

#include<stdio.h>
#include<string.h>
#include "stm32f407xx.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "fonts.h"
#include "ssd1306.h"
#include "test.h"

void delay(void)
{
	for(uint32_t i = 0 ; i < 500000/2 ; i ++);
}

I2C_HANDLE_t I2C1Handle;


uint8_t some_data[] = "Hi I am Abhinav\n";
/*
 * PB6-> SCL
 * PB7 -> SDA
 */

/*
 * PB6 							--> I2C1_SCL
 * PB7  						--> I2C1_SDA
 * ALT function mode 			--> 4
 * Arduino Address(Slave) 		--> 0x3C(0x78 after its shifted)
 * Display 						--> 124 x 64
 */

void I2C1_GPIOInits(void)
{
	GPIO_HANDLE_t I2CPins;

	I2CPins.pGPIOx = GPIOB;
	I2CPins.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_ALTFN;
	I2CPins.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_OD;
	I2CPins.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_PIN_PU;
	I2CPins.GPIO_PinConfig.GPIO_PinAltFunMode = 4;
	I2CPins. GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;

	//scl
	I2CPins.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_6;
	GPIO_Init(&I2CPins);


	//sda
	I2CPins.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_7;
	GPIO_Init(&I2CPins);


}

void I2C1_Inits(void)
{
	I2C1Handle.pI2Cx = I2C1;
	I2C1Handle.I2C_Config.I2C_ACKControl = I2c_ACK_EN;
	I2C1Handle.I2C_Config.I2C_DeviceAdress= 0x78;
	I2C1Handle.I2C_Config.I2C_FMDutyCycle = I2C_FM_DUTY_2;
	I2C1Handle.I2C_Config.I2C_SCL_Speed = I2C_SCL_SPEED_FM;

	I2C_Init(&I2C1Handle);

}

void GPIO_ButtonInit(void)
{
	GPIO_HANDLE_t GPIOBtn,GpioLed;

	//this is btn gpio configuration
	GPIOBtn.pGPIOx = GPIOA;
	GPIOBtn.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_0;
	GPIOBtn.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_IN;
	GPIOBtn.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;
	GPIOBtn.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;

	GPIO_Init(&GPIOBtn);

	//this is led gpio configuration
	GpioLed.pGPIOx = GPIOD;
	GpioLed.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_12;
	GpioLed.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUT;
	GpioLed.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;
	GpioLed.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_OD;
	GpioLed.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;

	GPIO_Init(&GpioLed);

}




int main(void)
{
  /* USER CODE BEGIN 1 */
	GPIO_ButtonInit();

	//i2c pin inits
	I2C1_GPIOInits();

	//i2c peripheral configuration
	I2C1_Inits();

	//enable the i2c peripheral
	I2C_PCtrl(I2C1,ENABLE);
  /* USER CODE END 1 */



  SSD1306_Init();  // initialise

  /// lets print some string
  char strarray[10] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
 while(1){

	 for(int i = 9; i >= 0; i--){

	    SSD1306_GotoXY (62,16);

	    SSD1306_Putc(strarray[i], &Font_16x26, 1);

	    SSD1306_UpdateScreen(); //display

	    Delay_ms (500);

	    SSD1306_Clear();
	}

	  SSD1306_GotoXY (26,8);

	  SSD1306_Puts("Welcome", &Font_11x18, 1);

	  SSD1306_UpdateScreen(); //display

	  Delay_ms (1000);

	  SSD1306_GotoXY (2,29);

	  SSD1306_Puts("OLED TESTING WITH STM32", &Font_7x10, 1);

	  SSD1306_UpdateScreen(); //display

	  Delay_ms (1000);

	  SSD1306_GotoXY (40,43);

	  SSD1306_Puts("STM32", &Font_7x10, 1);

	  SSD1306_UpdateScreen(); //display

	  Delay_ms (1000);

	  SSD1306_GotoXY (52,53);

	  SSD1306_Puts("By Abhinav", &Font_7x10, 1);

	  SSD1306_UpdateScreen(); //display

	  Delay_ms (1500);

	  SSD1306_Clear();
 }


}


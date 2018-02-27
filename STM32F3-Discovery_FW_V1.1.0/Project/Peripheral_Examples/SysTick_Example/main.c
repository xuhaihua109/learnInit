/**
  ******************************************************************************
  * @file    SysTick_Example/main.c 
  * @author  MCD Application Team
  * @version V1.1.0
  * @date    20-September-2012
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include <stddef.h>
#include "main.h"

#include "ucos_ii.h"
#include "os_cpu.h"


#define   SEMAPHORE_SWITCH      0


#define STARTUP_TASK_PRIO               10
#define STARTUP_TASK_STK_SIZE           64
OS_STK startup_task_stk[STARTUP_TASK_STK_SIZE];


//LED1任务
//设置任务优先级
#define LED1_TASK_PRIO       5
//设置任务堆栈大小
#define LED1_STK_SIZE       64
//创建任务堆栈空间
OS_STK LED1_TASK_STK[LED1_STK_SIZE];

//LED2任务
//设置任务优先级
#define LED2_TASK_PRIO       6
//设置任务堆栈大小
#define LED2_STK_SIZE   64
//创建任务堆栈空间
OS_STK LED2_TASK_STK[LED2_STK_SIZE];


#if(SEMAPHORE_SWITCH)
OS_EVENT *os_semaphore;
#endif


void led1_task(void *p_arg);
void led2_task(void *p_arg);




void LED_Init(void)
{

// GPIO_InitTypeDef  GPIO_InitStructure;
//
// RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB, ENABLE); //使能PB,PE端口时钟
// GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2; //LED0-->PA.2 端口配置
// GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; //推挽输出
// GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz; //IO口速度为50MHz
// GPIO_Init(GPIOA, &GPIO_InitStructure); //根据设定参数初始化GPIOA.2
// GPIO_ResetBits(GPIOA,GPIO_Pin_2); //PA.2 输出高
//
// GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;     //LED1-->PB.12 端口配置, 推挽输出
// GPIO_Init(GPIOB, &GPIO_InitStructure);   //推挽输出 ，IO口速度为50MHz
// GPIO_ResetBits(GPIOB,GPIO_Pin_12); //PB.12 输出高
	 STM_EVAL_LEDInit(LED3);
	  STM_EVAL_LEDInit(LED4);
	  STM_EVAL_LEDInit(LED5);
	  STM_EVAL_LEDInit(LED6);
	  STM_EVAL_LEDInit(LED7);
	  STM_EVAL_LEDInit(LED8);
	  STM_EVAL_LEDInit(LED9);
	  STM_EVAL_LEDInit(LED10);
}



static void startup_task(void *p_arg)
{
    INT8U err;
    OS_CPU_SR cpu_sr=0;
#if(SEMAPHORE_SWITCH)
    os_semaphore = OSSemCreate(1);
#endif


 //   OS_CPU_SysTickInit();
    SysTick_Config(SystemCoreClock / 1000);

    #if (OS_TASK_STAT_EN > 0)
    OSStatInit();
    #endif

    OS_ENTER_CRITICAL(); //进入临界区(无法被中断打断)


	  err = OSTaskCreate(led1_task, (void *)0,
						   (OS_STK*)&LED1_TASK_STK[LED1_STK_SIZE-1], LED1_TASK_PRIO);
	  err = OSTaskCreate(led2_task, (void *)0,
						   (OS_STK*)&LED2_TASK_STK[LED2_STK_SIZE-1], LED2_TASK_PRIO);

	OSTaskSuspend(STARTUP_TASK_PRIO); //挂起起始任务.
	OS_EXIT_CRITICAL(); //退出临界区(可以被中断打断)

	if (OS_ERR_NONE != err)
	while(1);

	OSTaskDel(OS_PRIO_SELF);
}

//LED1任务
void led1_task(void *p_arg)
{
while(1)
{
//GPIO_ResetBits(GPIOA,GPIO_Pin_2);

#if(SEMAPHORE_SWITCH)
	INT8U *pErrorType = NULL;

	*pErrorType = 0;


	OSSemPend(os_semaphore,0,pErrorType);
#endif
	STM_EVAL_LEDOn(LED3);
        OSTimeDly(500);
    STM_EVAL_LEDOff(LED3);
        OSTimeDly(500);
#if(SEMAPHORE_SWITCH)
        OSSemPost(os_semaphore);
#endif
}
}

//LED2任务
void led2_task(void *p_arg)
{
while(1)
{
//GPIO_ResetBits(GPIOB,GPIO_Pin_12);
#if(SEMAPHORE_SWITCH)
	INT8U *pErrorType2 = NULL;

	OSSemPend(os_semaphore,0,pErrorType2);
#endif
	STM_EVAL_LEDOff(LED7);
      //  OSTimeDly(500);
	OSTimeDlyHMSM(0,0,2,0);
//GPIO_SetBits(GPIOB,GPIO_Pin_12);

    STM_EVAL_LEDOn(LED7);
   //     OSTimeDly(500);
    OSTimeDlyHMSM(0,0,2,0);

}
}



/** @addtogroup STM32F3_Discovery_Peripheral_Examples
  * @{
  */

/** @addtogroup SysTick_Example
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
GPIO_InitTypeDef GPIO_InitStructure;
static __IO uint32_t TimingDelay;

/* Private function prototypes -----------------------------------------------*/
void Delay(__IO uint32_t nTime);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief   Main program
  * @param  None
  * @retval None
  */
int main(void)
{
  /*!< At this stage the microcontroller clock setting is already configured, 
       this is done through SystemInit() function which is called from startup
       file (startup_stm32f30x.s) before to branch to application main.
       To reconfigure the default setting of SystemInit() function, refer to
       system_stm32f30x.c file
     */     
  
  /* Initialize Leds mounted on STM32F3-discovery */
//  STM_EVAL_LEDInit(LED3);
//  STM_EVAL_LEDInit(LED4);
//  STM_EVAL_LEDInit(LED5);
//  STM_EVAL_LEDInit(LED6);
//  STM_EVAL_LEDInit(LED7);
//  STM_EVAL_LEDInit(LED8);
//  STM_EVAL_LEDInit(LED9);
//  STM_EVAL_LEDInit(LED10);
//
//  /* Turn On LED3 */
//  STM_EVAL_LEDOn(LED3);
//  /* Turn On LED7 */
//  STM_EVAL_LEDOn(LED7);
//  /* Turn On LED6 */
//  STM_EVAL_LEDOn(LED6);
//  /* Turn On LED10 */
//  STM_EVAL_LEDOn(LED10);
  
  /* Setup SysTick Timer for 1 msec interrupts.
     ------------------------------------------
    1. The SysTick_Config() function is a CMSIS function which configure:
       - The SysTick Reload register with value passed as function parameter.
       - Configure the SysTick IRQ priority to the lowest value (0x0F).
       - Reset the SysTick Counter register.
       - Configure the SysTick Counter clock source to be Core Clock Source (HCLK).
       - Enable the SysTick Interrupt.
       - Start the SysTick Counter.
    
    2. You can change the SysTick Clock source to be HCLK_Div8 by calling the
       SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8) just after the
       SysTick_Config() function call. The SysTick_CLKSourceConfig() is defined
       inside the stm32f30x_misc.c file.

    3. You can change the SysTick IRQ priority by calling the
       NVIC_SetPriority(SysTick_IRQn,...) just after the SysTick_Config() function 
       call. The NVIC_SetPriority() is defined inside the core_cm0.h file.

    4. To adjust the SysTick time base, use the following formula:
                            
         Reload Value = SysTick Counter Clock (Hz) x  Desired Time base (s)
    
       - Reload Value is the parameter to be passed for SysTick_Config() function
       - Reload Value should not exceed 0xFFFFFF
   */
//  if (SysTick_Config(SystemCoreClock / 1000))
//  {
//    /* Capture error */
//    while (1);
//  }

//  while (1)
//  {
//    /* Toggle LED3 */
//    STM_EVAL_LEDToggle(LED3);
//    /* Toggle LED7 */
//    STM_EVAL_LEDToggle(LED7);
//    /* Toggle LED6 */
//    STM_EVAL_LEDToggle(LED6);
//    /* Toggle LED10 */
//    STM_EVAL_LEDToggle(LED10);
//
//    /* Insert 100 ms delay */
//    Delay(100);
//
//    /* Toggle LED4 */
//    STM_EVAL_LEDToggle(LED4);
//    /* Toggle LED5 */
//    STM_EVAL_LEDToggle(LED5);
//    /* Toggle LED9 */
//    STM_EVAL_LEDToggle(LED9);
//    /* Toggle LED8 */
//    STM_EVAL_LEDToggle(LED8);
//
//    /* Insert 150 ms delay */
//    Delay(150);
//  }


	LED_Init();
	OSInit();


	OSTaskCreate(startup_task, (void *)0,
    (OS_STK*)&startup_task_stk[STARTUP_TASK_STK_SIZE-1],
	STARTUP_TASK_PRIO);
	OSStart();
	return 0;
}

/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void Delay(__IO uint32_t nTime)
{ 
  TimingDelay = nTime;

  while(TimingDelay != 0);
}

/**
  * @brief  Decrements the TimingDelay variable.
  * @param  None
  * @retval None
  */
void TimingDelay_Decrement(void)
{
  if (TimingDelay != 0x00)
  { 
    TimingDelay--;
  }
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */ 

/**
  * @}
  */ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

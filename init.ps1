mkdir App
Copy-Item .\STM32CubeG0\Projects\NUCLEO-G031K8\Templates\Inc\ App -Recurse
Copy-Item .\STM32CubeG0\Projects\NUCLEO-G031K8\Templates\Src\ App -Recurse
Copy-Item .\STM32CubeG0\Drivers\CMSIS\Device\ST\STM32G0xx\Source\Templates\gcc\startup_stm32g031xx.s App
Copy-Item .\STM32CubeG0\Projects\NUCLEO-G031K8\Templates\STM32CubeIDE\STM32G031K8TX_FLASH.ld App
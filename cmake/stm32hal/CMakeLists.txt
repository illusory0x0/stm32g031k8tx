cmake_minimum_required(VERSION 3.22)

project(stm32hal C ASM)
add_library(stm32hal INTERFACE)

target_compile_definitions(stm32hal INTERFACE
    USE_HAL_DRIVER
    STM32G031xx
    $<$<CONFIG:Debug>:DEBUG>
)

target_include_directories(stm32hal INTERFACE
    ../../App/Inc
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Inc
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Inc/Legacy
    ../../STM32CubeG0/Drivers/CMSIS/Device/ST/STM32G0xx/Include
    ../../STM32CubeG0/Drivers/CMSIS/Include
    ../../STM32CubeG0/Drivers/BSP/STM32G0xx_Nucleo_32
)

target_sources(stm32hal INTERFACE
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_adc_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_adc.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_cec.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_comp.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_cortex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_crc_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_crc.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_cryp_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_cryp.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_dac_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_dac.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_dma_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_dma.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_exti.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_fdcan.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_flash_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_flash.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_gpio.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_hcd.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_i2c_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_i2c.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_i2s.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_irda.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_iwdg.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_lptim.c

    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_pcd_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_pcd.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_pwr_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_pwr.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_rcc_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_rcc.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_rng.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_rtc_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_rtc.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_smartcard_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_smartcard.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_smbus_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_smbus.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_spi_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_spi.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_tim_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_tim.c



    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_uart_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_uart.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_usart_ex.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_usart.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal_wwdg.c
    ../../STM32CubeG0/Drivers/STM32G0xx_HAL_Driver/Src/stm32g0xx_hal.c
)

target_link_directories(stm32hal INTERFACE)

target_link_libraries(stm32hal INTERFACE)

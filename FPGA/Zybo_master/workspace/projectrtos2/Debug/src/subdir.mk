################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/echo.c \
../src/freertos_hello_world.c \
../src/platform.c \
../src/platform_mb.c \
../src/platform_ppc.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/echo.o \
./src/freertos_hello_world.o \
./src/platform.o \
./src/platform_mb.o \
./src/platform_ppc.o 

C_DEPS += \
./src/echo.d \
./src/freertos_hello_world.d \
./src/platform.d \
./src/platform_mb.d \
./src/platform_ppc.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../RTOS_BSP_2/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



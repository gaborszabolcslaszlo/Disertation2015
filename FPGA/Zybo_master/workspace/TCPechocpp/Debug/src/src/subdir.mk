################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/echo.c \
../src/src/platform.c \
../src/src/platform_mb.c \
../src/src/platform_ppc.c \
../src/src/platform_zynq.c 

LD_SRCS += \
../src/src/lscript.ld 

CC_SRCS += \
../src/src/GyroRegFunc.cc \
../src/src/main.cc 

OBJS += \
./src/src/GyroRegFunc.o \
./src/src/echo.o \
./src/src/main.o \
./src/src/platform.o \
./src/src/platform_mb.o \
./src/src/platform_ppc.o \
./src/src/platform_zynq.o 

C_DEPS += \
./src/src/echo.d \
./src/src/platform.d \
./src/src/platform_mb.d \
./src/src/platform_ppc.d \
./src/src/platform_zynq.d 

CC_DEPS += \
./src/src/GyroRegFunc.d \
./src/src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/%.o: ../src/src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -I../../timerTest_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/src/%.o: ../src/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -I../../timerTest_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



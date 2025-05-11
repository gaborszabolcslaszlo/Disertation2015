################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../src/src/TinyGPS/TinyGPS.cc 

OBJS += \
./src/src/TinyGPS/TinyGPS.o 

CC_DEPS += \
./src/src/TinyGPS/TinyGPS.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/TinyGPS/%.o: ../src/src/TinyGPS/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: ARM g++ compiler'
	arm-xilinx-eabi-g++ -Wall -O0 -g3 -c -fmessage-length=0 -I../../timerTest_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



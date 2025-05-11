################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GaborSZ_hw_platform/ps7_init.c 

OBJS += \
./GaborSZ_hw_platform/ps7_init.o 

C_DEPS += \
./GaborSZ_hw_platform/ps7_init.d 


# Each subdirectory must supply rules for building sources it contributes
GaborSZ_hw_platform/%.o: ../GaborSZ_hw_platform/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../timerTest_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



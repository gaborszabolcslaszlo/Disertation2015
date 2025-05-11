################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nmea/context.c \
../src/nmea/generate.c \
../src/nmea/generator.c \
../src/nmea/gmath.c \
../src/nmea/info.c \
../src/nmea/parse.c \
../src/nmea/parser.c \
../src/nmea/sentence.c \
../src/nmea/time.c \
../src/nmea/tok.c 

OBJS += \
./src/nmea/context.o \
./src/nmea/generate.o \
./src/nmea/generator.o \
./src/nmea/gmath.o \
./src/nmea/info.o \
./src/nmea/parse.o \
./src/nmea/parser.o \
./src/nmea/sentence.o \
./src/nmea/time.o \
./src/nmea/tok.o 

C_DEPS += \
./src/nmea/context.d \
./src/nmea/generate.d \
./src/nmea/generator.d \
./src/nmea/gmath.d \
./src/nmea/info.d \
./src/nmea/parse.d \
./src/nmea/parser.d \
./src/nmea/sentence.d \
./src/nmea/time.d \
./src/nmea/tok.d 


# Each subdirectory must supply rules for building sources it contributes
src/nmea/%.o: ../src/nmea/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../timerTest_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



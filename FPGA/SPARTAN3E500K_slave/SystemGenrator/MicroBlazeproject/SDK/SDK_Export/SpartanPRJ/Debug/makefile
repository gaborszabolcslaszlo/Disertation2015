################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
SpartanPRJ.elf.size \

ELFCHECK += \
SpartanPRJ.elf.elfcheck \


# All Target
all: SpartanPRJ.elf secondary-outputs

# Tool invocations
SpartanPRJ.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../standalone_bsp_12/microblaze_0/lib -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.c -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "SpartanPRJ.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

SpartanPRJ.elf.size: SpartanPRJ.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size SpartanPRJ.elf  |tee "SpartanPRJ.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

SpartanPRJ.elf.elfcheck: SpartanPRJ.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck SpartanPRJ.elf -hw ../../MicroBlazeproject_hw_platform/system.xml -pe microblaze_0  |tee "SpartanPRJ.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) SpartanPRJ.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

#
# my simple makefile act as something like a user interface
#

ifeq "${ARM_CORTEX_HOME}" ""
    $(error error: please source arm_cortex_env first!)
endif

ifeq "${ARM_CORTEX_BIN_HOME}" ""
    $(error error: please source armhf_env first!)
endif

# MODULES = libboard_sam3s-ek/build/gcc libchip_sam3s/build/gcc
MODULES = libboard_sam3s-ek/build/gcc

all::
	@echo "+-----------------------------------------------------------+"
	@echo "|                                                           |"
	@echo "|                     Building all                          |"
	@echo "|                                                           |"
	@echo "+-----------------------------------------------------------+"
	for dir in $(MODULES); do (cd $$dir && $(MAKE) all); done

clean::
	rm -f *~ *.o .*~
	for dir in $(MODULES); do (cd $$dir && $(MAKE) $@); done


#
# my simple makefile act as something like a user interface
#

ifeq "${ARM_CORTEX_HOME}" ""
    $(error error: please source arm_cortex_env first!)
endif

ifeq "${ARM_CORTEX_BIN_HOME}" ""
    $(error error: please source armhf_env first!)
endif

MODULES = libboard_sam3s-ek/build/gcc
MODULES += libchip_sam3s/build/gcc
MODULES += memories/build/gcc
MODULES += usb/build/gcc

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

install::
	cp -rf libboard_sam3s-ek/lib/libboard_sam3s_ek_gcc* ${ARM_CORTEX_HOME}/lib
	cp -rf libchip_sam3s/lib/libchip_sam3s4_gcc* ${ARM_CORTEX_HOME}/lib
	cp -rf memories/lib/libmemories_sam3s_gcc* ${ARM_CORTEX_HOME}/lib
	cp -rf usb/lib/libusb_sam3s_gcc* ${ARM_CORTEX_HOME}/lib

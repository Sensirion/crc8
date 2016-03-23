#########################################################################
#
# CRC8 module
#
#########################################################################

#########################################################################
# Kernel build directory
#########################################################################
KERNELDIR?=/lib/modules/$(shell uname -r)/build/


#########################################################################
# Build setup
#########################################################################
# you should have a source called  $(MODULENAME).c in the same directory
MODULENAME=crc8
MODULEBINARY=$(MODULENAME).ko

#########################################################################
# Targets
#########################################################################
obj-m := $(MODULENAME).o

$(MODULEBINARY): $(MODULENAME).c
	@$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
	@$(MAKE) -C $(KERNELDIR) M=$(PWD) clean; rm -f *.symvers


all: $(MODULEBINARY)


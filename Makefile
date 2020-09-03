obj-m := gs_usb_fd.o 

KDIR  := /lib/modules/$(shell uname -r)/build
PWD   := $(shell pwd)
LINDENT := /usr/src/kernels/$(shell uname -r)/scripts/Lindent

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

format:
	$(LINDENT) gs_usb_fd.c

.NOTPARALLEL:

buildinstall: k.conf
	@echo $(IMG)
	cp k.conf linux-stable/.config
	$(MAKE) -C linux-stable modules
	$(MAKE) -C linux-stable modules_install INSTALL_MOD_PATH=$(IMG)
	$(MAKE) -C linux-stable firmware_install INSTALL_FW_PATH=$(IMG)
	rm linux-stable/.config

bzImage:
	$(MAKE) -C linux-stable bzImage
	cp linux-stable/bzImage $(IMG)/boot/bzImage

uImage:
	$(MAKE) -C linux-stable uImage
	cp linux-stable/uImage $(IMG)/boot/uImage

k.conf: defconf

defconf:
	rm -f k.conf linux-stable/.config
	$(MAKE) -C linux-stable defconfig
	cp linux-stable/.config k.conf

lsmodconf:
	rm -f k.conf linux-stable/.config
	$(MAKE) -C linux-stable lconfig
	cp linux-stable/.config k.conf

defx86: buildinstall bzImage

.NOTPARALLEL:

buildinstall: k.conf
	@echo $(IMG)
	$(MAKE) -C linux-stable modules
	$(MAKE) -C linux-stable modules_install INSTALL_MOD_PATH=$(IMG)
	$(MAKE) -C linux-stable firmware_install INSTALL_FW_PATH=$(IMG)
	rm linux-stable/.config

bzImage: k.conf
	cp k.conf linux-stable/.config
	$(MAKE) -C linux-stable bzImage
	cp linux-stable/arch/x86/boot/bzImage $(IMG)/boot/bzImage
	rm linux-stable/.config

uImage: k.conf
	cp k.conf linux-stable/.config
	$(MAKE) -C linux-stable uImage
	cp linux-stable/uImage $(IMG)/boot/uImage
	rm linux-stable/.config

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

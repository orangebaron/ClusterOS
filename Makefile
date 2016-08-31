IMG = /tmp/buildimg

.NOTPARALLEL:

test:
	mkdir -p $(IMG)/boot
	$(MAKE) -C linuxkernel defx86 IMG=$(IMG)

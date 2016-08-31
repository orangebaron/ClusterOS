IMG = $(shell mktemp -d)

.NOTPARALLEL:

test:
	mkdir $(IMG)/boot
	$(MAKE) -C linuxkernel defx86 IMG=$(IMG)

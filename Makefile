IMG = $(shell mktemp -d)
mkdir $(IMG)/boot

.NOTPARALLEL:

test:
	$(MAKE) -C linuxkernel defx86 IMG=$(IMG)

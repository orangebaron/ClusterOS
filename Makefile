A = $(shell mktemp -d)

IMG = $(A)

.NOTPARALLEL:

test:
	mkdir $(IMG)/boot
	$(MAKE) -C linuxkernel defx86 IMG=$(IMG)

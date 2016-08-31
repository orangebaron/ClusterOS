IMG = $(shell mktemp -d)

.NOTPARALLEL:

test:
	$(MAKE) -C linuxkernel defx86 IMG=$(IMG)

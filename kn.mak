ISO_DIR = iso
BOOTLOADER_DIR = bootloader
KERNEL_DIR = kernel

all: build_iso

build_kernel:
	$(MAKE) -C $(KERNEL_DIR)

build_iso: build_kernel
	mkdir -p $(ISO_DIR)/boot
	cp $(KERNEL_DIR)/kernel.bin $(ISO_DIR)/boot/

run: build_iso
	qemu-system-x86_64 -cdrom $(ISO_DIR)/boot/kernel.bin

clean:
	rm -rf $(ISO_DIR)
	$(MAKE) -C $(KERNEL_DIR) clean
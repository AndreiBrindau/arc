```plaintext
set timeout=0
set default=0

menuentry "Arc OS" {
    multiboot2 /boot/kernel.bin
    boot
}
```
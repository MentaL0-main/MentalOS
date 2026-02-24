#!/bin/bash
nasm -f elf64 src/boot/stage1.asm -o boot.o
gcc -c src/kernel/kernel.c -o kernel.o -ffreestanding -nostdlib
ld -T linker.ld boot.o kernel.o -o kernel.bin
qemu-system-x86_64 -kernel kernel.bin

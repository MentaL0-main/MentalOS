# MentalOS

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](build.sh)
> Custom x86-64 OS written in NASM from scratch. Bootloader → Kernel → Drivers.

## Quick Start
```bash
git clone https://github.com/mental0-main/MentalOS
cd MentalOS
chmod +x build.sh
./build.sh 
```

## Technical Specs

| Feature | Description |
|---------|-------------|
| Architecture | x86 (16-bit Real Mode) → x86_64 Protected Mode |
| Assembler | NASM (Netwide Assembler) |
| Target | BIOS boot (Legacy MBR) |
| Size | 512 bytes bootloader (stage1) |
| Languages | C/C++/NASM Assembly |
| Testing | QEMU x86_64 emulator |
| Build system | Bash + NASM |
| Kernel | Monolithic (planned) |
| Memory | Identity mapped (0x7C00+) |
| Drivers | BIOS interrupts (0x10 video, 0x16 keyboard) |

## Authors
- Miraly Ruziev (mental0-main)

## License
This project licensed under the **MIT License**.

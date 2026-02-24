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

| Характеристика | Описание                                       |
| -------------- | ---------------------------------------------- |
| Архитектура    | x86 (16-bit Real Mode) → x86_64 Protected Mode |
| Ассемблер      | NASM (Netwide Assembler)                       |
| Таргет         | BIOS boot (Legacy MBR)                         |
| Размер         | 512 байт bootloader (stage1)                   |
| Язык           | 100% NASM Assembly                             |
| Тестирование   | QEMU x86_64 emulator                           |
| Билд система   | Bash + NASM                                    |
| Kernel         | Monolithic (planned)                           |
| Memory         | Identity mapped (0x7C00+)                      |
| Драйверы       | BIOS interrupts (0x10 video, 0x16 keyboard)    |

## Authors
- Miraly Ruziev (mental0-main)

## License
License - MIT, see more in LICENSE

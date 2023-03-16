# DavOS

An operating system

## Prerequisites

### [Nasm](https://www.nasm.us/)

nasm is used here to compile the assembly code (`.asm`) for x86 machines

Install `nasm`:

```sh
  brew install nasm
```

### [Qemu](https://www.qemu.org/)

qemu is used here to emulate machines with different architectures so we can
test our OS on them

Install `qemu`

```sh
  brew install qemu
```

## Running the OS

`make run` will assemble the code in [`src/boot_sect.asm`](/src/boot_sect.asm) and emulate it.

## TODO

Use another assembler to compile to different architectures

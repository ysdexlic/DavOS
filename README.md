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

You can run `make build` to compile the assembly code and then run `make run` to
emulate it.

## TODO

Use another assembler to compile to different architectures


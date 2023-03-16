.PHONY: build run

make_build_dir:
	mkdir build

build: make_build_dir
	nasm src/boot_sect.asm -o build/boot_sect.bin

run:
	qemu-system-x86_64 -drive file=./build/boot_sect.bin,format=raw,index=0,media=disk

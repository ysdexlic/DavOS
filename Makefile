.PHONY: make_build_dir build run test

make_build_dir:
	@mkdir -p build

build: make_build_dir
	@nasm src/boot_sect.asm -o build/boot_sect.bin

run: build
	@qemu-system-x86_64 -drive file=./build/boot_sect.bin,format=raw,index=0,media=disk

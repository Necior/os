boot.bin: boot.asm
	nasm boot.asm -f bin -o boot.bin

.PHONY: run
run: boot.bin
	qemu-system-i386 -hda boot.bin


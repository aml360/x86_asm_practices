all:
	nasm -f elf32 -o hello_world.o hello_world.asm
	ld -m elf_i386 -o hello_world.executable hello_world.o

clean:
	rm hello_world.executable hello_world.o
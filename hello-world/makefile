make:
	nasm -f macho64 hello-world.asm
	ld -macos_version_min 10.15 -o hello-world hello-world.o -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
run:
	./hello-world
clean:
	rm -f hello-world.o
make:
	nasm -f macho64 calculator.asm
	ld -macos_version_min 10.15 -o calculator calculator.o -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
	rm -f calculator.o
run:
	./calculator
clean:
	rm -f *.o calculator
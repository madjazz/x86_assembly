hello: hello.o
	ld -o hello hello.o -macosx_version_min 10.13 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
hello.o: hello.asm
	nasm -g -f macho64 -o hello.o hello.asm -l hello.lst
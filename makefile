CFLAGS=-Wall -Wno-int-conversion

compile:
	mkdir -p build
	gcc -c microprocessor.c -o build/microprocessor.o $(CFLAGS)
	gcc -c decoder.c -o build/decoder.o
	gcc -c assembly.c -o build/assembly.o
	gcc -c main.c -o build/main.o
	gcc -c lib.c -o build/lib.o
	gcc -c simulator.c -o build/simulator.o
	gcc -o main build/decoder.o build/assembly.o build/microprocessor.o build/lib.o build/simulator.o build/main.o -lm
clean:
	rm -rf build
	rm main
	
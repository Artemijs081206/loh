CC = gcc
CFLAGS = -I.

.PHONY: all clean clear

all: clean main

bd: main.o
	$(CC) -o bd main.o

bd.o: main.c
	$(CC) -c -o main.o main.c $(CFLAGS)

clean:
	rm -f *.o bd

clear: clean
	rm -f *.o bd
CC = gcc
CFLAGS = -Wall -O2
LIBS = -lmicrohttpd

all: webapp

webapp: main.o
    $(CC) $(CFLAGS) -o webapp main.o $(LIBS)

main.o: main.c
    $(CC) $(CFLAGS) -c main.c

clean:
    rm -f webapp main.o

# Makefile for Windows (Win32) only.

CC := gcc
CFLAGS := -Wall -g
LDFLAGS := -LC:\libs\SDL2-32bits-MinGW\lib -LC:\libs\SDL2_image\i686-w64-mingw32\lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image
INCLUDE := -Isrc/
SOURCE := $(wildcard src/*.c)

all:
	$(CC) $(CFLAGS) $(SOURCE) $(INCLUDE) $(LDFLAGS) -o game.exe

clean:
	rm -rf *.exe

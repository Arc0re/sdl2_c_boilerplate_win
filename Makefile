# Makefile for Windows (Win32) only.

CC := gcc
CFLAGS := -Wall -g
LIBS := -LC:\libs\SDL2-32bits-MinGW\lib -LC:\libs\SDL2_image\i686-w64-mingw32\lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image
WINFLAGS := -w -Wl,-subsystem,windows
INCLUDE := -IC:\libs\SDL2-32bits-MinGW\include\SDL2 -IC:\libs\SDL2_image\i686-w64-mingw32\include\SDL2
SOURCE := $(wildcard *.c)

all:
	$(CC) $(CFLAGS) $(SOURCE) $(INCLUDE) $(LIBS) -o game.exe

clean:
	rm -rf *.exe

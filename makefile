#makefile ex
#pinjoa

CC=gcc
CFLAGS=-I.
#DEPS = all.h
REXE=prog.exe

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: main.o 
	$(CC) -o $(REXE) main.o 
	$(REXE)

clean:
	del main.o
	del prog.exe

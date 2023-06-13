# Makefile
CC = gcc
CFLAGS = -I.
DEPS = 
OBJ = main.o 
LIBS = 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(OBJ) main


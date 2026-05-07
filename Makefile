CC     = gcc
CFLAGS = -g -O0 -Wall
TARGET = demo_crash

.PHONY: all build test clean

all: build

build:
	$(CC) $(CFLAGS) -o $(TARGET) demo_crash.c

test: build
	./$(TARGET)

clean:
	rm -f $(TARGET)

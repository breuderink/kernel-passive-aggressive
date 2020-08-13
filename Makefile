CFLAGS ?= -I ../vendor/ -MP -std=c99 -Wall -fsanitize=undefined,address
LDFLAGS ?= -fsanitize=undefined,address

all: kpa_test

kpa_test: kpa_test.o kpa.o
kpa.o: kpa.h

.PHONY: all pretty

pretty:
	clang-format -style=file -i *.c *.h

PROG=cimplefetch
CC=gcc
CFLAGS=-Wall -g

build:
	make cimplylib
	gcc -o $(PROG) $(PROG).c cimplylib/cimply.a


install:
	install -D -m 755 $(PROG) /usr/bin/$(PROG)

uninstall:
	rm -f /usr/bin/$(PROG)

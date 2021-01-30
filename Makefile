PROG=cimplefetch
CC=gcc
CFLAGS=-Wall -g

build:
	gcc $(CFLAGS) -o $(PROG) $(PROG).c -lcimply


install:
	install -D -m 755 $(PROG) /usr/bin/$(PROG)


uninstall:
	rm -f /usr/bin/$(PROG)


clean:
	rm -f $(PROG)


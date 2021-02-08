PROG=cimplefetch
CC=gcc
CFLAGS=-Wall -g

build:
	$(CC) $(CFLAGS) -o $(PROG) $(PROG).c -lcimply

install:
	strip $(PROG)
	install -D -m 755 $(PROG) /usr/bin/$(PROG)

uninstall:
	rm -f /usr/bin/$(PROG)

clean:
	rm -f $(PROG)


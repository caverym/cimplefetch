PROG=cimplefetch

build:
	gcc -o $(PROG) $(PROG).c

install:
	install -D -m 755 $(PROG) /usr/bin/$(PROG)

uninstall:
	rm -f /usr/bin/$(PROG)

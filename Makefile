# Makefile for hello-nightmare
# by Eriberto, 2018

CC = gcc
PREFIX = /usr/local

all: hello-nightmare

hello-nightmare:
#	[ -e Makefile ] || $(error ERROR: run `./configure' before run `make')
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) hello-nightmare.c -o hello-nightmare

install:
#	[ -e hello-nightmare ] || $(error ERROR: run `make' before run `install')
#	[ -e $(PREFIX)/bin/hello-nightmare ] && $(error ERROR: hello-nightmare already installed)
	cp hello-nightmare $(PREFIX)/bin
	cp hello-nightmare.1 $(PREFIX)/share/man/man1
	install -D -m 755 engine $(PREFIX)/share/hello-nightmare/engine
	cp COPYING $(PREFIX)/share/hello-nightmare/COPYING

uninstall:
#	[ -e $(PREFIX)/bin/hello-nightmare ] || $(error ERROR: hello-nightmare is not installed)
	rm -f  $(PREFIX)/bin/hello-nightmare
	rm -f  $(PREFIX)/share/man/man1/hello-nightmare.1
	rm -rf $(PREFIX)/share/hello-nightmare/

clean:
	rm -f hello-nightmare

distclean: clean
	rm -rf autom4te.cache config.* configure

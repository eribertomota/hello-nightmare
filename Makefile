# Makefile for hello-nightmare
# by Eriberto, 2018-2019

CC = gcc
LDFLAGS = -DNONE

all: hello-nightmare

hello-nightmare:
#	[ -e Makefile ] || $(error ERROR: run `./configure' before run `make')
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) hello-nightmare.c -o hello-nightmare

install:
#	[ -e hello-nightmare ] || $(error ERROR: run `make' before run `install')
#	[ -e /usr/bin/hello-nightmare ] && $(error ERROR: hello-nightmare already installed)
	cp hello-nightmare /usr/bin
	cp hello-nightmare.1 /usr/share/man/man1
	install -D -m 755 engine /usr/share/hello-nightmare/engine
	cp COPYING /usr/share/hello-nightmare/COPYING
	cp -a docs docs2 /usr/share/hello-nightmare/

uninstall:
#	[ -e /usr/bin/hello-nightmare ] || $(error ERROR: hello-nightmare is not installed)
	rm -f  /usr/bin/hello-nightmare
	rm -f  /usr/share/man/man1/hello-nightmare.1
	rm -rf /usr/share/hello-nightmare/

clean:
	rm -f hello-nightmare

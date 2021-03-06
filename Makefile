prefix=/usr/local
bindir=$(prefix)/bin
bin_SCRIPTS = samskrit-identity samskrit-swap

all:

clean:

install:
	install -d $(DESTDIR)$(bindir)
	install $(bin_SCRIPTS) $(DESTDIR)$(bindir)

uninstall:
	cd $(DESTDIR)$(bindir) && rm -f $(bin_SCRIPTS)

.PHONY: all clean install uninstall

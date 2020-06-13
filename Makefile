BINDIR   = /usr/bin
DATADIR  = /usr/share/mkinitrd
HOOKDIR  = /etc/mkinitrd.d
IBINDIR	 = $(DESTDIR)$(BINDIR)
IDATADIR = $(DESTDIR)$(DATADIR)
IHOOKDIR = $(DESTDIR)$(HOOKDIR)

all:
	@echo "Run 'make install' to install"

install:
	install -d $(IBINDIR)
	install -m755 mkinitrd $(IBINDIR)
	install -d $(IDATADIR)
	install -m755 init $(IDATADIR)
	install -d $(IHOOKDIR)
	install -m644 hook/* $(IHOOKDIR)
	install -m644 mkinitrd.conf $(DESTDIR)/etc/mkinitrd.conf

uninstall:
	rm -f $(IBINDIR)/mkinitrd
	rm -f $(IDATADIR)/init
	rm -f $(DESTDIR)/etc/mkinitrd.conf

.PHONY: all install uninstall

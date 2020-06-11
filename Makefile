BINDIR   = /usr/bin
DATADIR  = /usr/share/mkinitrd
IBINDIR	 = $(DESTDIR)$(BINDIR)
IDATADIR = $(DESTDIR)$(DATADIR)

all:
	@echo "Run 'make install' to install"

install:
	install -d $(IBINDIR)
	install -m755 mkinitrd $(IBINDIR)
	install -d $(IDATADIR)
	install -m755 init $(IDATADIR)

uninstall:
	rm -f $(IBINDIR)/mkinitrd
	rm -f $(IDATADIR)/init

.PHONY: all install uninstall

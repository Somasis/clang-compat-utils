PREFIX?=/usr
BINDIR?=$(PREFIX)/bin

BINS := built-with build-world-with-clang clang-blacklist

all:

install:
	mkdir -p "$(DESTDIR)$(BINDIR)/"
	for bin in $(BINS);do \
		install "$$bin" "$(DESTDIR)$(BINDIR)/$$bin"; \
	done

uninstall:
	for bin in $(BINS);do \
		rm "$(DESTDIR)$(BINDIR)/$$bin"; \
	done
	rmdir "$(DESTDIR)$(BINDIR)"

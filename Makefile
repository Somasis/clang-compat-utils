PREFIX?=/usr
BINS := built-with build-world-with-clang clang-blacklist

all:

install:
	mkdir -p "$(DESTDIR)$(PREFIX)/bin"
	for bin in $(BINS);do \
		install "$$bin" "$(DESTDIR)$(PREFIX)/bin"; \
	done

uninstall:
	for bin in $(BINS);do \
		rm "$(DESTDIR)$(PREFIX)/$$bin"; \
	done
	rmdir "$(DESTDIR)$(PREFIX)/bin"

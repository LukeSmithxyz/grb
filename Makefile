
PREFIX = /usr/local

grb: grb.sh grb.awk grb.tsv
	cat grb.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar czf - grb.awk grb.tsv >> $@
	chmod +x $@

test: grb.sh
	shellcheck -s sh grb.sh

clean:
	rm -f grb

install: grb
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f grb $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/grb

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/grb

.PHONY: test clean install uninstall

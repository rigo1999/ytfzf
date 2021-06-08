PREFIX = /usr/local/bin

SCRIPT = ytfzf

install:
	pacman -S --needed --noconfirm youtube-dl mpv jq curl fzf
	mkdir -p ${DESTDIR}${PREFIX}
	cp ${SCRIPT} ${DESTDIR}${PREFIX}
	chmod 755 ${DESTDIR}${PREFIX}/${SCRIPT}

uninstall:
	rm ${DESTDIR}${PREFIX}/${SCRIPT}

.PHONY: install uninstall

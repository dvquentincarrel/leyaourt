
.SILENT install: install-home install-usr
	[ $$XDG_SESSION_TYPE != wayland ] && setxkbmap leyaourt || echo "Wayland found: you must update your layout manually"

install-home: $$HOME/.config/xkb/symbols/leyaourt
$$HOME/.config/xkb/symbols/leyaourt:
	mkdir -p $$HOME/.config/xkb/symbols
	cp $$PWD/leyaourt $$HOME/.config/xkb/symbols/leyaourt && echo "leyaourt added to .config/xkb/symbols"

install-usr: /usr/share/X11/xkb/symbols/leyaourt
/usr/share/X11/xkb/symbols/leyaourt:
	sudo cp $$PWD/leyaourt /usr/share/X11/xkb/symbols/leyaourt && echo "leyaourt added to /usr/share/X11/xkb/symbols/leyaourt"

uninstall: uninstall-usr uninstall-home

uninstall-usr: /usr/share/X11/xkb/symbols/leyaourt
	sudo rm /usr/share/X11/xkb/symbols/leyaourt

uninstall-home: /usr/share/X11/xkb/symbols/leyaourt
	rm $$HOME/.config/xkb/symbols/leyaourt

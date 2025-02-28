
.SILENT install:
	sudo cp $$PWD/leyaourt /usr/share/X11/xkb/symbols && echo "leyaourt added to /usr/share/X11/xkb/symbols"
	[ $$XDG_SESSION_TYPE != wayland ] && setxkbmap leyaourt || echo "Wayland found: you must update your layout manually"

uninstall: /usr/share/X11/xkb/symbols
	sudo rm /usr/share/X11/xkb/symbols

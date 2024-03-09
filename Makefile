
.SILENT install:
	sudo cp -i $$PWD/leyaourt /usr/share/X11/xkb/symbols
	setxkbmap leyaourt

uninstall: /usr/share/X11/xkb/symbols
	sudo rm /usr/share/X11/xkb/symbols

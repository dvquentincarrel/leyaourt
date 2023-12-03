
install:
	@sudo cp -i $$PWD/leyaourt /usr/share/X11/xkb/symbols
	@setxkbmap leyaourt

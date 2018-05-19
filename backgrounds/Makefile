#!/usr/bin/make -f

THEME      =    manjaro-cinnamon
PREFIX     = 	/usr
DPATH 	   =	$(DESTDIR)$(PREFIX)/share/backgrounds/$(THEME)
DXMLGNOME  =    $(DESTDIR)$(PREFIX)/share/gnome-background-properties
DXMLMATE   =    $(DESTDIR)$(PREFIX)/share/mate-background-properties
DEL 	   =  	rm -Rf
INSTD 	   =	install -Dm644 -t
	
install:
	./backgrounds-xml.sh
	mkdir -p $(DXMLGNOME)
	cp -f $(THEME).xml $(DXMLGNOME)
	$(INSTD) $(DPATH) *.jpg 
	
	
uninstall:
	$(DEL) $(DPATH)
	rm -f $(DXMLGNOME)/$(THEME).xml
 

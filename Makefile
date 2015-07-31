EXTRACTFILES=utilities/locales_files.txt
EN=lib/Lstu/I18N/en.po
FR=lib/Lstu/I18N/fr.po
XGETTEXT=carton exec local/bin/xgettext.pl
CARTON=carton exec
REAL_LSTU=script/application

locales:
	$(XGETTEXT) -f $(EXTRACTFILES) -o $(EN)
	$(XGETTEXT) -f $(EXTRACTFILES) -o $(FR)

test:
	$(CARTON) $(REAL_LSTU) test

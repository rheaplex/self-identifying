GS = gs -dNOPAUSE -dBATCH -dNOSAFER

SELVES = */
MAKEFILES = $(addsuffix Makefile,$(SELVES))
READMES = $(addsuffix README.md,$(SELVES))

all: $(MAKEFILES) $(READMES)

%/Makefile: %
	cp Makefile-template $</Makefile
	perl -i -p -e 's/--TEMPLATE--/$</g' $</Makefile

%/README.md: %
	cp README.md-template $</README.md
	perl -i -p -e 'my $$a = ucfirst("$<"); s/--TEMPLATE--/$$a/eg' $</README.md

clean:
	rm -f */Makefile */README.md

.PHONY: clean

.default: all

GS="gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite"

PDFS=$(wildcard *.pdf)

all: $(PDFS)

%.pdf: %.ps
	$(GS) -sOutputFile=$@ $<

appended-signature.ps: appended-signature.ps.src appended-signature.ascii
	cat appended-signature.ps.src appended-signature.ascii \
		> appended-signature.ps

appended-signature.ascii: appended-signature.ps.src
	cat appended-signature.ps.src | sha256sum > appended-signature.ascii

check-appended-signature:
	sed -n '/start of data/,$$p' appended-signature.ps | tail -n+2 \
		> appended-signature-check.ascii
	sed '/start of data/q' appended-signature.ps | head -n -1 \
		> appended-signature-check.ps
	gpg  --verify append-signature-check.ascii append-signature-check.ps

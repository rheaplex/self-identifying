GS = gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite

pdfs = inline-hash.pdf inline-signature.pdf not-inline-signature.pdf

all: $(pdfs)

appended-signature.ascii: appended-signature.ps.src
	cat appended-signature.ps.src \
		| sha256sum > appended-signature.ascii

appended-signature.ps: appended-signature.ps.src appended-signature.ascii
	cat appended-signature.ps.src appended-signature.ascii \
		> appended-signature.ps

check-appended-signature:
	sed -n '/start of data/,$$p' appended-signature.ps \
		| tail -n+2 \
		> appended-signature-check.ascii
	sed '/start of data/q' appended-signature.ps \
		| head -n -1 \
		> appended-signature-check.ps
	gpg  --verify appended-signature-check.ascii append-signature-check.ps

appended-signature.pdf: appended-signature.ps
	$(GS) \
	-sOutputFile=appended-signature.pdf \
	appended-signature.ps

inline-signature.pdf: inline-signature.ps
	$(GS) \
		--permit-file-read="%pipe%gpg -o - --clearsign ./inline-signature.ps" \
		-sOutputFile=inline-signature.pdf \
		inline-signature.ps

not-inline-signature.pdf: not-inline-signature.ps
	$(GS) \
		--permit-file-read="%pipe%echo This is not a triangle. | gpg -o - --clearsign" \
		-sOutputFile=not-inline-signature.pdf \
		not-inline-signature.ps

check: check-appended-signature

clean:
	rm -f $(pdfs)
	rm -f appended-signature.ps
	rm -f appended-signature.ascii appended-signature-check.ascii

.PHONY: all check clean pdfs

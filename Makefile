GS = gs -sPAPERSIZE=ledger -dNOPAUSE -dBATCH -sDEVICE=pdfwrite

pdfs = inline-hash.pdf not-inline-hash.pdf inline-signature.pdf not-inline-signature.pdf

all: $(pdfs)

inline-hash.pdf: inline-hash.ps
	$(GS) \
	--permit-file-read="%pipe%cat inline-hash.ps && echo -n '% ' && sha256sum inline-hash.ps" \
	-sOutputFile=inline-hash.pdf \
	inline-hash.ps

not-inline-hash.pdf: not-inline-hash.ps
	$(GS) \
	--permit-file-read="%pipe%cat not-inline-hash.ps && echo -n '% ' && echo This is not a triangle. | sha256sum" \
	-sOutputFile=not-inline-hash.pdf \
	not-inline-hash.ps

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

.PHONY: all check clean pdfs

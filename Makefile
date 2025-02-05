GS = gs -dNOPAUSE -dBATCH -dNOSAFER

SELVES = triangle square circle \
	red yellow blue \
	statement assertion critique \
	spots checks stripes \
	bitmap graymap pixmap \
	polyline curves turtle

PSES = $(addsuffix .ps,$(SELVES))
PDFS = $(addsuffix .pdf,$(SELVES))
PNGS = $(addsuffix .png,$(SELVES))

all: $(PDFS) $(PNGS)

%.pdf: %.ps
	$(GS) -sDEVICE=pdfwrite -sOutputFile=$@ $< \
		-c "[ /Title (i am $(basename $<)) /DOCINFO pdfmark"

%.png: %.ps
	$(GS) -sDEVICE=png16m -r357.2 -dBackgroundColor=16#FFFFFF \
		-dTextAlphaBits=4 -dGraphicsAlphaBits=4 \
		-sOutputFile=$@ $<

clean:
	rm -f $(PDFS) $(PNGS)

.PHONY: all clean PDFS PNGS

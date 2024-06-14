GS = gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dNOSAFER

pdfs = triangle.pdf square.pdf circle.pdf \
	red.pdf yellow.pdf blue.pdf \
	statement.pdf assertion.pdf critique.pdf \
	spots.pdf checks.pdf stripes.pdf \
	bitmap.pdf graymap.pdf pixmap.pdf

all: $(pdfs)

%.pdf: %.ps
	$(GS) -sOutputFile=$@ $<

clean:
	rm -f $(pdfs)

.PHONY: all clean pdfs

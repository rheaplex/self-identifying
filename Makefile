GS = gs -sPAPERSIZE=ledger -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dNOSAFER

pdfs = triangle.pdf square.pdf circle.pdf red.pdf yellow.pdf blue.pdf

all: $(pdfs)

%.pdf: %.ps
	$(GS) -sOutputFile=$@ $<

clean:
	rm -f $(pdfs)

.PHONY: all clean pdfs

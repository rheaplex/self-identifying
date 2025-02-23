GS = gs -dNOPAUSE -dBATCH -dNOSAFER

SELF = blue
PS = $(addsuffix .ps,$(SELF))
PDF = $(addsuffix .pdf,$(SELF))
PNG = $(addsuffix .png,$(SELF))

all: $(PDF) $(PNG)

%.pdf: %.ps
	$(GS) -sDEVICE=pdfwrite -sOutputFile=$@ $< \
		-c "[ /Title (i am $(basename $<)) /DOCINFO pdfmark"

%.png: %.ps
	$(GS) -sDEVICE=png16m -r357.2 -dBackgroundColor=16#FFFFFF \
		-dTextAlphaBits=4 -dGraphicsAlphaBits=4 \
		-sOutputFile=$@ $<

clean:
	rm -f $(PDF) $(PNG)

.PHONY: all clean

.default: all

gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
    -sOutputFile=inline-signature.pdf inline-signature.ps && \
    evince inline-signature.pdf

gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=appended-signature.pdf appended-signature.ps && evince appended-signature.pdf 

gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
    --permit-file-read="%pipe%gpg -o - --clearsign ./inline-signature.ps" \
    -sOutputFile=inline-signature.pdf inline-signature.ps \
    && evince inline-signature.pdf

gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
    -sOutputFile=appended-signature.pdf appended-signature.ps \
    && evince appended-signature.pdf


gs -sPAPERSIZE=11x17 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite \
    --permit-file-read="%pipe%echo This is not a triangle. | gpg -o - --clearsign" \
    -sOutputFile=not-inline-signature.pdf inline-signature-bad.ps \
    && evince not-inline-signature.pdf
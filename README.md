Self-Identifying
================

Rhea Myers, 2024.

Notes
=====

macOS Preview.app mangles the images in bitmap/graymap/pixmap.
They show OK in other PDF viewers, notably Acrobat.


The document size is ANSI C.


Where you see something like:

    0.28 sub bigfontsize mul

this is a fudge to allow for the font ascender height, particularly on the first
row of multi-line text where it must align with the top margin.


The `scale` in statement.pdf is to make the text fill the available space.

Generally, where a number is strange it is there to make things fit.

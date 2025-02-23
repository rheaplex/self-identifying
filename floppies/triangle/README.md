# Self-Identifying: Triangle (Floppy Edition)

*PostScipt program on Floppy Disk, dimensions variable, Rhea Myers,
 2025*

## About

*Self-Identifying: Triangle (Floppy Edition)* is an
image-generating program written in *PostScript*, formerly the lingua
franca of design and printing. It has been turned into a
self-referential and self-reproducing *Quine* program that prints its
own source code. While it is doing so, it creates a cryptographic
identity not just for but of itself, and cryptographically signs its
image with it. This mirrors the cypherpunk conceptions of personhood
and political subjectivity that gave us Bitcoin.

Bitcoin secures the being of its value and its users from state
intervention with cryptographic identities managed by a simple
scripting language called *Script* that curiously resembles PostScript
in both name and structure. Unlike Script, PostScript is *Turing
Complete* - it has loops. This is why it can access other resources on
the computer it is running on, including command-line cryptography
tools.

The crypto community's statement “Not your keys, not your coins” is
the “I think therefore I am” of the blockchain age. Through its
self-verifying code, *Self-Identifying: Triangle (Floppy Edition)*
asserts these historical philosophical ideas of selfhood against the
contemporary backlash against self-determination.

## Care and Handling

Floppy disks are an aging and fragile medium. Make sure not to:

* Pull back the metal cover for the disk.
* Touch the disk inside its case.
* Let dust or moisture enter the disk case.
* Bring any magnets or sources of magnetism near to the disk.
* Let the disk get too hot or cold (the manufacturer recommends
  keeping it between 10-60 degrees Celsius / 50-140 degrees
  Fahrenheit).

## Requirements

To read this file and access the others on this disk you will need to
have a floppy disk drive.

Before doing anything else you should create a copy of this disk. You
have explicit authorization to do so as many times as needed to ensure
that you retain access to its content while the original is in your
possession. (If in doubt, take a copy.)

To recreate the image files from the PostScript source, you will need
a Unix shell environment (such as GNU/Linux or macOS) with the
following software installed:

* base64
* cut
* ecdsasign
* GhostScript
* Make
* sha256sum
* xxd

Some of these, such as cut, should be installed already. Others, like
GhostScript, can be installed as a package. Others, like ecdsasign,
may be hidden within another installable package.

To rebuild the image files, **which will erase the originals**, enter a
Unix shell and type the following, replacing `/PATH/TO/THE/FLOPPY`
with the path to the drive containing the floppy disk containing these
files.

```
cd /PATH/TO/THE/FLOPPY
make clean
make
```

## Display

The PNG of the image is sized for screen display.

Should you need a larger image for display, the PDF can be rasterized
with different size and/or resolution settings to produce it.

## Printing

The PDF of each image should produce high-quality prints.

The document size is ANSI C.

## Notes

macOS Preview.app mangles the images in bitmap/graymap/pixmap. They
show OK in other PDF viewers, notably Acrobat.

The `scale` in statement.pdf is to make the text fill the available
space.

Where you see any strange constants being applied to positions, this
is a fudge to allow for the font ascender height, particularly on the
first row of multi-line text where it must align with the top margin.

Generally, where a number is strange it is there to make things fit.

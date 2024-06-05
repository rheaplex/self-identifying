Notes
=====

We have to work with Ghostscript's security model.
This means that we tell Ghostscript which files each script will open.

We also have to work around Ghostscript's bugs.
The means passing the random seed explicitly rather than using realtime.

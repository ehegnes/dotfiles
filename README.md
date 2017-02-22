ehegnes's Glorious Dotfiles
==================

Anybody using symbolic links with a script to upload their dotfiles is doing it
wrong.

Use hardlinks—they don't get enough love!

People who need to link against files on a separate partition have no excuse.
You've been able to do `mount --bind` since Linux 2.4.0.

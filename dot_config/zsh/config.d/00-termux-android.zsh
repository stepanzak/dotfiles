# This file is for specific shell configuration only applied in Termux (or another terminal emulator on Android)

umask 022
#default umask in Termux is 077. That sets every file or directory's permissions to 700.
#chezmoi (the dotfile maanger) sets prefix private_ for every file or directory with these permissions.
#I don't like it and I don't need the files in termux to have permissions 700.

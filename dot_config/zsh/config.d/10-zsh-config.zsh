# This file sest various configuration options of ZSH itself

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#directory stack settings:
setopt AUTO_PUSHD # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS # Do not store duplicates in the stack.
setopt PUSHD_SILENT # Do not print the directory stack after pushd or popd.
setopt AUTO_CD # Cd to a directory without typing cd.
setopt CORRECT_ALL # Try to correct the spelling of commands and arguments.
setopt HIST_IGNORE_SPACE # Do not store commands that start with a space in the history.
setopt INTERACTIVE_COMMENTS # Allow comments in interactive shells.

# This file sest various configuration options of ZSH itself

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#directory stack settings:
setopt AUTO_PUSHD # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS # Do not store duplicates in the stack.
setopt PUSHD_SILENT # Do not print the directory stack after pushd or popd.

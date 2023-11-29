# This file exports environment variables

# Set default values for XDG variables if not already set
if [ -z "$XDG_DATA_HOME" ]; then
    XDG_DATA_HOME="$HOME/.local/share"
fi

if [ -z "$XDG_CACHE_HOME" ]; then
    XDG_CACHE_HOME="$HOME/.cache"
fi

if [ -z "$XDG_CONFIG_HOME" ]; then
    XDG_CONFIG_HOME="$HOME/.config"
fi

if [ -z "$XDG_STATE_HOME" ]; then
    XDG_STATE_HOME="$HOME/.local/state"
fi

export EDITOR=nvim
export DIFFPROG="nvim -d"
export DIFFTOOL="nvim -d"

#export various envs that allow me to move files and folders out of my $HOME
#provided by xdg-ninja
export ANDROID_HOME="$XDG_DATA_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export STACK_ROOT="$XDG_DATA_HOME"/stack
export WINEPREFIX="$XDG_DATA_HOME"/wine
export HISTFILE="$XDG_STATE_HOME"/zsh/history

export PATH="$PATH:$CARGO_HOME/bin:$HOME/bin:$HOME/.local/bin"

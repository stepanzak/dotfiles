# This file sets keymaps for ZSH (my keymaps are very VIM-like)

#enable native vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu: 
bindkey -M menuselect 'h' vi-backward-char 
bindkey -M menuselect 'j' vi-down-line-or-history 
bindkey -M menuselect 'k' vi-up-line-or-history 
bindkey -M menuselect 'l' vi-forward-char 
bindkey -M menuselect 'left' vi-backward-char 
bindkey -M menuselect 'down' vi-down-line-or-history 
bindkey -M menuselect 'up' vi-up-line-or-history 
bindkey -M menuselect 'right' vi-forward-char 
# Fix backspace bug when switching modes 
bindkey "^?" backward-delete-char

#hit v in normal mode to edit command line
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

#in normal mode, alt+h,j,k,l acts like arrows
bindkey -M main "^[k" up-line-or-history
bindkey -M main "^[j" down-line-or-history
bindkey -M main "^[l" vi-forward-char
bindkey -M main "^[h" vi-backward-char

#Set alt + i to skip one word and alt + m to skip to the end of line
#these motions are used in zsh-autocomplete plugin to autocomplete
#the whole suggestion or only one word of it
bindkey -M main "^[i" vi-forward-word
bindkey -M main "^[m" vi-end-of-line

# This file configures autocompletion.
# Note that sourcing files for autocompletion for programs
# happens in 06-programs.zsh.

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.config/zsh/config.d/04-autocompletion.zsh'
# End of lines added by compinstall

# credit to Brodie Robertson.
# https://github.com/BrodieRobertson/dotfiles/blob/master/.zshrc
autoload -Uz compinit 
 zstyle ':completion:*' menu select 
 # Auto complete with case insenstivity 
 zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' 
  
zmodload zsh/complist 

#If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
#That is, the cursor is moved to the end of the word if either a single match is inserted or menu completion is performed.
setopt ALWAYS_TO_END

# Try to make the completion list smaller (occupying less lines) by printing the matches in columns with different widths.
setopt LIST_PACKED

# When listing files that are possible completions, show the type of each file with a trailing identifying mark.
# For example @ after symlinks
setopt LIST_TYPES

compinit 
 _comp_options+=(globdots) # Include hidden files.

# This file configures autocompletion.
# Note that sourcing files for autocompletion for programs
# happens in 06-programs.zsh.

# The following lines were added by compinstall
# zstyle :compinstall filename '$HOME/.config/zsh/config.d/04-autocompletion.zsh'
# End of lines added by compinstall

# credit to Brodie Robertson.
# https://github.com/BrodieRobertson/dotfiles/blob/master/.zshrc
# autoload -Uz compinit
#  zstyle ':completion:*' menu select
#  # Auto complete with case insenstivity
#  zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#
# zmodload zsh/complist

#If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word.
#That is, the cursor is moved to the end of the word if either a single match is inserted or menu completion is performed.
setopt ALWAYS_TO_END

# Try to make the completion list smaller (occupying less lines) by printing the matches in columns with different widths.
setopt LIST_PACKED

# When listing files that are possible completions, show the type of each file with a trailing identifying mark.
# For example @ after symlinks
setopt LIST_TYPES

# fzf-tab config
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
# zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
# zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'
# remove the annoying dot prefix
zstyle ':fzf-tab:*' prefix ''

zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

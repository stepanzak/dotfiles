#This file sources various programs that requires it.
#It may also set some settings for programs without their own config file.

# source antidote (zsh plugin manager)
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

#init zoxide (better cd or something) if it exists
[ -x "$(command -v zoxide)" ] && eval "$(zoxide init zsh)"

#source broot (br command) if it exists
[ -e ~/.config/broot/launcher/bash/br ] && source ~/.config/broot/launcher/bash/br

#init atuin (better shell history or something) if it exist
[ -x "$(command -v atuin)" ] && eval "$(atuin init zsh --disable-up-arrow)"

#init trashy (trash CLI but rust) if it exist
[ -x "$(command -v trash)" ] && eval $(trash completions zsh)

# pipx:
autoload -U bashcompinit
bashcompinit
[ -x "$(command -v pipx)" ] && eval "$(register-python-argcomplete pipx)"

# pnpm
export PNPM_HOME="/home/stepka/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

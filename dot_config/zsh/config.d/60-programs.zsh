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

#init navi (one-liner cheatsheet) to be opened with Ctrl+G
[ -x "$(command -v navi)" ] && eval "$(navi widget zsh)"

#xremap completions (xremap is a keyboard remap tool)
[ -x "$(command -v xremap)" ] && eval "$(xremap --completions zsh)"

# pipx:
[ -x "$(command -v pipx)" ] && eval "$(register-python-argcomplete pipx)"

# NestedTextTo
if (( $+functions[compdef] )) && (( $+commands[nt2json] ))  compdef _gnu_generic nt2yaml nt2toml nt2json json2nt toml2nt yaml2nt

# oh-my-posh
# [ -x "$(command -v oh-my-posh)" ] && [ ! -d "${fpath[1]}/_oh-my-posh" ] && oh-my-posh completion zsh > "${fpath[1]}/_oh-my-posh"

# pnpm
export PNPM_HOME="/home/stepka/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# yy shell wrapper that provides the ability to change the current working directory when exiting Yazi.
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

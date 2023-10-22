# This file sets aliases and functions that can be used as commands.

#directory stack aliases - commands 1, 2, 3 etc
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

#general aliases
alias "bls=eza -a --group-directories-first -s modified --icons=always"
alias "ls=eza -a --group-directories-first -s name --icons=always"
alias "sl=sl -eawd3"
alias "rt=trash put"
alias "chz=chezmoi"

#tldrf (tldr find) - search tldr cache with fzf
alias "tldrf=tldr \$(tldr --list | fzf-tmux -p --reverse)"

#pls = sudo, but with no arguments it's "sudo !!"
function pls(){
	if [ "$#" -eq 0 ]; then
        	sudo $(fc -ln -1)
	else
		sudo $@
	fi
}

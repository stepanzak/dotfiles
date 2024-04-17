# This file exports env variables that configure the ZSH Auto-Notify plugin
# https://github.com/MichaelAquilina/zsh-auto-notify
# (the plugin is later loaded by the Antidote ZSH plugin manager in 60-programs.zsh)

# Set notification expiry to 2 seconds
export AUTO_NOTIFY_EXPIRE_TIME=2000

# Add docker to list of ignored commands
AUTO_NOTIFY_IGNORE+=("btop" "yazi" "bat" "tmux" "zellij" "br" "tldr" "tldrf" "glow")

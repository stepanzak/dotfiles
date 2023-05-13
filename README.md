# My dotfiles
this repo contains my personal dotfiles, managed using [chezmoi](https://github.com/twpayne/chezmoi).
Many of the programs are Linux specific. File locations are also Linux specific. I don't use Windows, so I don't have Windows paths configured.

## Additional info on individual dotfiles:
### wallpapers:
no-place-like-tilde.svg requires [Fira Code](https://github.com/tonsky/FiraCode) font to be installed. no-place-like-tilde_plain.svg doesn't.

### chromium-flags.conf:
The chromium-flags.conf is an Arch Linux specific file containing flags that are passed to Chromium on every launch. Flags in my chromium-flags.conf are id and secret found in Chromium's source code. These flags allow signing to Chromium with a Google account, which was recently removed and is impossible without these flags.
[more info](https://stackoverflow.com/questions/67459316/enabling-chromium-to-sync-with-google-account)

### dot_config/nvim/lua/custom/*
Here is my [NeoVim](https://github.com/neovim/neovim) config. Note that this is not full NeoVim config, this is custom [NvChad](https://github.com/NvChad/NvChad) config. NvChad itself is a base NeoVim config.

### dot_config/tmux/tmux.conf
This is my [Tmux](https://github.com/tmux/tmux) config.
If you want to use this config, please install [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager).
You can install it with git using this command:
```bash 
 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
 ```

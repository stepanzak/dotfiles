# What do I do when I reinstall my os
- [[Nov 2nd, 2023]]
- ## Disclaimer:
	- This file was created just for my personal use.
	  There probably isn't any reason why you should follow it step-by-step.
	  It's also not great and I plan to improve it. (But I planed many things and I've done none of them)
	  Feel free to take inspiration from this file.
	  Idk where to put license or if I should do it, do anything you want with this file :)
- ### Install os:
	- boot live iso of EndeavourOS
	- Install the KDE version **with printing support**
	- boot into it
-
- `sudo nano /etc/security/pam_env.conf`, add the following lines at the end of the file:
  ``XDG_DATA_HOME	DEFAULT=@{HOME}/.local/share
  XDG_CONFIG_HOME	DEFAULT=@{HOME}/.config
  XDG_STATE_HOME	DEFAULT=@{HOME}/.local/state
  XDG_CACHE_HOME	DEFAULT=@{HOME}/.cache
  ZDOTDIR      DEFAULT=@{HOME}/.config/zsh``
- rank Arch and EndeavourOS mirrors
- install `paru` using yay
- remove yay
- install chezmoi
  :LOGBOOK:
  CLOCK: [2023-11-02 Thu 18:54:05]
  :END:
- `chezmoi init stepanzak` clones my dotfiles from GitHub
- `chezmoi apply -v` applies the dotfiles
- install `konsave`
- install kde addons used by the konsave profile:
	- download widgets before applying konsave:
		- rigt-click on panel > add widgets > get new > download new widgets:
			- CatWalk
			- Plasma Drawer
			- FancyTasks
			- Do not unplug yet
			- Chat GPT Plasmoid
			- Translator
	- download theme stuff before applying konsave:
		- go to settings > appearance >
			- global theme > get new > Stone > install > use
			- application style > configure gnome/GTK style > get new > gruvbox GTK theme
			- cursors > get new > Future Cursors
			- Splash screen > get new > Fishy
			- `sudo pacman -S ttf-firacode-nerd`
- `konsave --apply sunset` to apply my konsave profile called *sunset* from my dotfiles
- right click on desktop > configure desktop and wallpaper >
	- wallpaper > layout: Desktop > Apply now
	- wallpaper > Add image > `~/.local/share/chezmoi/wallpapers/no-place-like-tilde_no-font.svg`
- right click on desktop > add widgets > add the CatWalk widget on desktop two times
	- right click on them > configure >
		- idle treshold: 10%
		- Displaying items: Character only
	- resize and rotate the widgets so the first cat is on the highest spot of the tidle
	  and the second cat is below the lowest spot, but rotated upside down
- `sudo nano /etc/paru.conf`, uncomment *BootomUp* and *NewsOnUpgrade*
- reboot
-
- ## the settings app:
	- ### non-theming-related setting:
		- open the *settings* app
		- set the correct scaling if the UI is too small or big in:
			- display and monitor > global scale
			- appearance > fonts > adjust all fonts > size
		- regional settings > region and language > set all to european standarts
		- user feedback > allow telemetry (for greater good)
		- input devices > keyboard >
			- layouts > configure layouts > add > Czech (QWERTY)
			- advanced > configure keyboard options > Caps Lock behavior swap Esc and Caps Lock
	- ### theming-related settings
		- window managment > task switcher > get new > Medium Rounded Dark
		- search > Plasma Search > Get New > Kolors
		- startup and shutdown > SDDM > Get New > NetLogin
		- icons > get new > Gruvbox Plus Icon Pack, Papirus
			- use papirus > apply
			- use Gruvbox Plus > apply
- `sudo systemctl enable bluetooth`
- right-click firewall icon in systray > edit firewall settings > configuration: permanent
	- enable *kdeconnect* on every firewall zone you want to use KDE Connect
- download KDE Connect on phone from F-Droid
- reboot
- pair phone with KDE Connect
-
- ## installing all packages from previous system (listed in dotfiles)
	- install ZSH
		- `sudo pacman -S zsh`
		- create this directory `mkdir .local/state/zsh`
		- set it as you user shell `chsh -s $(which zsh)`
		- reboot (this is because I'm not sure if some packages do something differently on install depending on user shell)
	- `comm -23 <(sort ~/.local/share/chezmoi/arch-packages.txt) <(sort <(paru -Qq)) > ~/arch-packages.txt`
	  this will create file arch-packages.txt in your home directory.
	  This file contains list of packages from dotfiles (~/.local/share/chezmoi/arch-packages.txt) without already installed packages.
	- edit the file and remove packages you don't want to install
	- `paru -S $(cat ~/arch-packages.txt)`
	- you can also copy the file into dotfiles if you wanna save your selection:
	  `cp ~/arch-packages.txt ~/.local/share/chezmoi/arch-packages.txt`
	- some packages requires manual intervention:
		- grub-holdshift says:
		  > Remember to run `grub-mkconfig -o /boot/grub/grub.cfg`
		  This won't be automated to avoid overwriting manutally-edited grub.cfg files.
		- to use git with github, use `gh auth login` and login to you github account asap
	- installing [antidote](https://github.com/mattmc3/antidote) from AUR currently doesn't work for me. Manual installation:
		- `git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote`
	- pipx is adding lines into my config without my consent!
		- rm ~/.zprofile
		- nvim ~/.config/zsh/.zhrc
			- remove the last lines *# created by pipx ...*
	- **reboot**
	- additional package setup:
		- tealdeer: run `tldr --update` to update Tealdeer's tldr cache
		- bat: run `bat cache --build` so bat will recognize the theme from dotfiles
	- `pacman-cleanup-hook` package should be installed by now
		- if it's not, install it. That's all.
		- if you enabled package cleanup from the EndeavourOS's welcome app, it enabled paccache.timer systemd timer. Systemd timers run periodicaly, I think that pacman hook is better.
			- run `sudo systemctl disable paccache.timer` to disable the timer
- ## Terminal config
	- open WezTerm
	- Tmux:
		- Install Tmux plugins:
			- press Ctrl+space
			- press Shift+I
			- wait
		- install tmux-thumbs:
			- press `Ctrl+space`, then `space`
			- press any key to continue
			- press `1` to compile it (or `2` to download if you can't compile)
		- save state for tmux-ressurect
			- arrange sessions, windows and panes as you like
			- press `Ctrl+space`, then `Ctrl+s`
			- whenever you reboot and open Tmux, it will be ressurected in this state
			- you can change the state any time and save it again the same way
	-
	- Login to Atuin:
		- `atuin login -u username -p password`
		- **DO NOT PRESS ENTER**
		- open command line on another device where you are logged in to atuin (e.g. termux on phone)
			- `atuin key`
		- enter the words printed by `atuin key` to the *Please enter encryption key* prompt
		- `atuin sync`
	- Configure Broot:
		- run `broot` command
		- you will be prompted to install a shell function
		- say yes
		- edit your zshrc (`nvim ~/.config/zsh/.zshrc`)
			- remove the line sourcing broot at the bottom
		- OR just run `chezmoi apply -v` and agree to overwrite .zshrc
- ## Neovim config
	- I use [NvChad](https://github.com/NvChad/NvChad) as my base config. Install it:
		- you first need to remove the nvim config folder:
		  `rm -fr ~/.config/nvim`
		- clone the NvChad base config:
		  `git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim`
		- respond "y" (yes) to the question if you wanna install example config
		- wait for all the things to complete
		- quit nvim
		- `chezmoi apply -v` to apply dotfiles (overwrite the example config)
			- press `a` to overwrite all conflicting files or press `o` to overwrite them one-by-one
		- `nvim`, wait for the installations
		- `space + x`to close the plugin installation prompt
		- press `:`, type *NvChadUpdate*, enter
			- again `space + x` to close the installation prompt
			- `Ctrl + w` then`q` to close the split with the *Already updated!* message
		- press `:` again, type *MasonInstallAll*
- ## Grub theme:
	- Default EndeavourOS GRUB theme is really ugly IMO
	- Open the *Grub customizer* app to change it
		- enter password (it needs root access)
		- go to the *appearance* tab
		- if you want a simple theme, just select `(Custom Settings)` in the *Theme:* dropdown menu
			- you can customize colors or font little bit
		- If you want a pre-made theme, click the plus icon next to the dropdown and select archive with the theme
			- [this repo](https://github.com/divory100/tasty-grubs) has nice Amongus theme (very funny I know)
			  You need to download it and create archive with only the one theme.
			  **It must not have top level folder!** example:
			  `tar cf ./amogus.tar ./amongus_large` - *wrong!*
			   `tar cf ./amogus.tar ./amongus_large/*` - *wrong!*
			  
			  ``cd ./amongus
			  tar cf ../amogus.tar *`` - *correct!*
- ## Vivaldi browser config
	- Login to Vivaldi account
		- sync all data (this might take a while)
	- Add all the workspaces you want
	- settings > themes > get more > [*Sunset (based on Gruvbox)*](https://themes.vivaldi.net/themes/NOb71q3z71g)
	- go to startpage.com > click Stylus extension icon > find styles > *Startpage.com Gruvbox Sunset*
- ## (Better) Discord setup:
	- Log in to Discord
	- run `betterdiscord-installer` from the command line
	- go through the installation steps and install BetterDiscord
	- open discord again
	- download the PluginRepo plugin from [here](https://betterdiscord.app/plugin/PluginRepo)
	- put the downloaded .js file to this folder: `~/.config/BetterDiscord/plugins/`
	- go to discord, click *Download Now* if prompted to download missing library
	- if prompted to update plugins, click *Update all*
	- go to Settings > Plugins > Enable PluginRepo and BDFDB
	- exit settings, enter setting again
	- find *Plugin Repo* tab in the **BETTERDISCORD** category
	- download all the Plugins you want, namely:
		- ThemeRepo
	- Enable the plugins in the *Plugins* tab
	- go to Theme Repo tab, you might need to re-enter settings again
		- Download the *Spectra* theme
	- go to the *Themes* tab, enable Spectra
- ## Spotify & Spicetify setup:
	- open spotify and log in
	- make sure you have insatlled following packages:
	  ``spicetify-cli
	  spicetify-marketplace-bin``
	- run these commands:
	  ``sudo chmod a+wr /opt/spotify
	  sudo chmod a+wr /opt/spotify/Apps -R``
	- run `spicetify config custom_apps marketplace`
	- run `spicetify backup apply`
	- open spotify
	- go to the *Marketplace* tab
		- go to *Themes*
			- install the *Onepunch* theme
		- go to *Extensions*
			- install the extensions you want to use, namely:
				- Adblock
				- Beautiful lyrics
				- Spotify Genres
				- Power Bar
				- Queue time
				- Utilities
				- No Tracking Links
				- keyboard-shortcuts
- ## Logseq config:
- ## random misc things:
	- `sudo systemctl enable docker`
	- if you can't see emojis, download emoji font like twemoji with paru
- ## Log in to various apps:
	- Lunar client
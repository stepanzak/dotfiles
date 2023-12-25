-- This is my Wezterm config created with Tmux in mind
-- github.com/stepanzak/dotfiles
-- use it, modify it, do whatever you want with it. No credit needed (but appreciated)

local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

-- set tmux as default program. This means that when you open a wezterm window,
-- command "tmux" runs. If tmux server isn't running, first wezterm window will
-- start it and if you have tmux-continuum with automatic restore, it will restore
-- your previous sessions. Every new window launched when tmux server is running will
-- create a new tmux session and attach to it. It's the same behavior as running "tmux" command.
-- You can switch sessions or create new and all that stuff, but when tmux program exits
-- (if you detach from tmux or when you kill the session you are in), the wezterm window closes.
config.default_prog = { 'tmux' }
config.color_scheme = 'Sakura'
if wezterm.gui.get_appearance():find 'Light' then
  config.color_scheme = 'Gruvbox (Gogh)'
else
  -- My "Sunset" color scheme (Gruvbox but with gold as a main color)
  config.color_scheme = "GruvboxDarkHard"
  config.colors = {
    foreground = '#d79921'
  }
end

-- Broot font for icons in Broot TUI
config.font = wezterm.font_with_fallback({ "FiraCode Nerd Font", "Broot Icons Visual Studio Code" })
config.font_size = 13

-- disable tab bar (tabs are handled by tmux)
config.enable_tab_bar = false

-- Unfortunately, this hacky way is the only way to start Wezterm maximized (not fullscreen)
-- I have tried other ways, but all of them was ugly and with visible resizing on window launch
-- Customize the values to fit your screen size exactly.
-- If you know about any other way to do that, please create an issuse at github.com/stepanzak/dotfiles.
-- config.initial_rows = 36
-- config.initial_cols = 146
-- UPDATE: setting window rule to maximize wezterm window both horizontally and vertically in KDE Plasma now works for me.
-- It's not ideal though

-- disable most of the keybindings because tmux can do that.
-- in fact, I'm disabling all of them here and just allowing the few I want
config.disable_default_key_bindings = true

local act = wezterm.action
config.keys = {
  { key = "-",        mods = "CTRL",  action = act.DecreaseFontSize },
  { key = "=",        mods = "CTRL",  action = act.IncreaseFontSize },
  { key = "P",        mods = "CTRL",  action = act.ActivateCommandPalette },
  { key = "V",        mods = "CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "Copy",     mods = "NONE",  action = act.CopyTo("Clipboard") },
  { key = "Paste",    mods = "NONE",  action = act.PasteFrom("Clipboard") },
  { key = "F11",      mods = "NONE",  action = act.ToggleFullScreen },
}

return config

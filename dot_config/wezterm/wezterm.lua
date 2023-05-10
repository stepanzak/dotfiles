local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "GruvboxDarkHard"

config.font = wezterm.font_with_fallback({ "FiraCode Nerd Font", "Broot Icons Visual Studio Code" })
config.font_size = 13

config.enable_tab_bar = false
config.initial_rows = 36
config.initial_cols = 146

-- disable most of the keybindings bcs tmux can do that.
-- in fact, I'm diabling all of them here and just allowing the few I want
config.disable_default_key_bindings = true
local act = wezterm.action
config.keys = {
  { key = ")",        mods = "CTRL",  action = act.ResetFontSize },
  { key = "-",        mods = "CTRL",  action = act.DecreaseFontSize },
  { key = "=",        mods = "CTRL",  action = act.IncreaseFontSize },
  { key = "N",        mods = "CTRL",  action = act.SpawnWindow },
  { key = "P",        mods = "CTRL",  action = act.ActivateCommandPalette },
  { key = "V",        mods = "CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "Copy",     mods = "NONE",  action = act.CopyTo("Clipboard") },
  { key = "Paste",    mods = "NONE",  action = act.PasteFrom("Clipboard") },
  { key = "F11",      mods = "NONE",  action = act.ToggleFullScreen },
}

return config

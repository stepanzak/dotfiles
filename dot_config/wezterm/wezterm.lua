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
  { key = "C",        mods = "CTRL",  action = act.CopyTo("Clipboard") },
  { key = "K",        mods = "CTRL",  action = act.ClearScrollback("ScrollbackOnly") },
  { key = "L",        mods = "CTRL",  action = act.ShowDebugOverlay },
  { key = "N",        mods = "CTRL",  action = act.SpawnWindow },
  { key = "P",        mods = "CTRL",  action = act.ActivateCommandPalette },
  { key = "R",        mods = "CTRL",  action = act.ReloadConfiguration },
  { key = "V",        mods = "CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "PageUp",   mods = "SHIFT", action = act.ScrollByPage(-1) },
  { key = "PageDown", mods = "SHIFT", action = act.ScrollByPage(1) },
  { key = "Copy",     mods = "NONE",  action = act.CopyTo("Clipboard") },
  { key = "Paste",    mods = "NONE",  action = act.PasteFrom("Clipboard") },
  { key = "F11",      mods = "NONE",  action = act.ToggleFullScreen },
}

return config

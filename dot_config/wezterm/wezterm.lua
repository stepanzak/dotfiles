local wezterm = require("wezterm")
local config = {}

config.color_scheme = "GruvboxDarkHard"

config.font = wezterm.font_with_fallback({ "FiraCode Nerd Font", "Broot Icons Visual Studio Code" })
config.font_size = 13

config.enable_tab_bar = false
config.disable_default_key_bindings = true
local act = wezterm.action

config.keys = {
  { key = ")",   mods = "CTRL",           action = act.ResetFontSize },
  { key = "+",   mods = "CTRL",           action = act.IncreaseFontSize },
  { key = "+",   mods = "SHIFT|CTRL",     action = act.IncreaseFontSize },
  { key = "-",   mods = "CTRL",           action = act.DecreaseFontSize },
  { key = "-",   mods = "SHIFT|CTRL",     action = act.DecreaseFontSize },
  { key = "-",   mods = "SUPER",          action = act.DecreaseFontSize },
  { key = "0",   mods = "CTRL",           action = act.ResetFontSize },
  { key = "0",   mods = "SHIFT|CTRL",     action = act.ResetFontSize },
  { key = "0",   mods = "SUPER",          action = act.ResetFontSize },
  { key = "=",   mods = "CTRL",           action = act.IncreaseFontSize },
  { key = "=",   mods = "SHIFT|CTRL",     action = act.IncreaseFontSize },
  { key = "=",   mods = "SUPER",          action = act.IncreaseFontSize },
  { key = "C",   mods = "CTRL",           action = act.CopyTo("Clipboard") },
  { key = "C",   mods = "SHIFT|CTRL",     action = act.CopyTo("Clipboard") },
  { key = "K",   mods = "CTRL",           action = act.ClearScrollback("ScrollbackOnly") },
  { key = "K",   mods = "SHIFT|CTRL",     action = act.ClearScrollback("ScrollbackOnly") },
  { key = "L",   mods = "CTRL",           action = act.ShowDebugOverlay },
  { key = "L",   mods = "SHIFT|CTRL",     action = act.ShowDebugOverlay },
  { key = "N",   mods = "CTRL",           action = act.SpawnWindow },
  { key = "N",   mods = "SHIFT|CTRL",     action = act.SpawnWindow },
  { key = "P",   mods = "CTRL",           action = act.ActivateCommandPalette },
  { key = "P",   mods = "SHIFT|CTRL",     action = act.ActivateCommandPalette },
  { key = "R",   mods = "CTRL",           action = act.ReloadConfiguration },
  { key = "R",   mods = "SHIFT|CTRL",     action = act.ReloadConfiguration },
 
  { key = "V", mods = "CTRL",        action = act.PasteFrom("Clipboard") },
  { key = "V", mods = "SHIFT|CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "X", mods = "CTRL",        action = act.ActivateCopyMode },
  { key = "X", mods = "SHIFT|CTRL",  action = act.ActivateCopyMode },
  { key = "Z", mods = "CTRL",        action = act.TogglePaneZoomState },
  { key = "Z", mods = "SHIFT|CTRL",  action = act.TogglePaneZoomState },
  { key = "_", mods = "CTRL",        action = act.DecreaseFontSize },
  { key = "_", mods = "SHIFT|CTRL",  action = act.DecreaseFontSize },
  { key = "c", mods = "SHIFT|CTRL",  action = act.CopyTo("Clipboard") },
  { key = "c", mods = "SUPER",       action = act.CopyTo("Clipboard") },
  { key = "k", mods = "SHIFT|CTRL",  action = act.ClearScrollback("ScrollbackOnly") },
  { key = "k", mods = "SUPER",       action = act.ClearScrollback("ScrollbackOnly") },
  { key = "l", mods = "SHIFT|CTRL",  action = act.ShowDebugOverlay },
  { key = "n", mods = "SHIFT|CTRL",  action = act.SpawnWindow },
  { key = "n", mods = "SUPER",       action = act.SpawnWindow },
  { key = "p", mods = "SHIFT|CTRL",  action = act.ActivateCommandPalette },
  { key = "r", mods = "SHIFT|CTRL",  action = act.ReloadConfiguration },
  { key = "r", mods = "SUPER",       action = act.ReloadConfiguration },
  {
    key = "u",
    mods = "SHIFT|CTRL",
    action = act.CharSelect({ copy_on_select = true, copy_to = "ClipboardAndPrimarySelection" }),
  },
  { key = "v",          mods = "SHIFT|CTRL",     action = act.PasteFrom("Clipboard") },
  { key = "v",          mods = "SUPER",          action = act.PasteFrom("Clipboard") },
    { key = "PageUp",     mods = "SHIFT",          action = act.ScrollByPage(-1) },
  { key = "PageDown",   mods = "SHIFT",          action = act.ScrollByPage(1) },
    { key = "Insert",     mods = "SHIFT",          action = act.PasteFrom("PrimarySelection") },
  { key = "Insert",     mods = "CTRL",           action = act.CopyTo("PrimarySelection") },
  { key = "Copy",       mods = "NONE",           action = act.CopyTo("Clipboard") },
  { key = "Paste",      mods = "NONE",           action = act.PasteFrom("Clipboard") },
}

return config

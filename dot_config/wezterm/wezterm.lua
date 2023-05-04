local wezterm = require("wezterm")
local config = {}

config.color_scheme = "GruvboxDarkHard"

config.font = wezterm.font_with_fallback({ "FiraCode Nerd Font", "Broot Icons Visual Studio Code" })
config.font_size = 13

config.enable_tab_bar = false

local act = wezterm.action

config.keys = {
  { key = "Tab", mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "Tab", mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "F11", mods = "NONE",           action = act.ToggleFullScreen },
  { key = "!",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "!",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = '"',   mods = "ALT|CTRL",       action = act.DisableDefaultAssignment },
  { key = '"',   mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "#",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "#",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "$",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "$",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "%",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "%",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "%",   mods = "ALT|CTRL",       action = act.DisableDefaultAssignment },
  { key = "%",   mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "&",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "&",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "'",   mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "(",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "(",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  -- { key = ")",   mods = "CTRL",           action = act.ResetFontSize },
  -- { key = "*",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  -- { key = "*",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  -- { key = "+",   mods = "CTRL",           action = act.IncreaseFontSize },
  -- { key = "+",   mods = "SHIFT|CTRL",     action = act.IncreaseFontSize },
  -- { key = "-",   mods = "CTRL",           action = act.DecreaseFontSize },
  -- { key = "-",   mods = "SHIFT|CTRL",     action = act.DecreaseFontSize },
  -- { key = "-",   mods = "SUPER",          action = act.DecreaseFontSize },
  -- { key = "0",   mods = "CTRL",           action = act.ResetFontSize },
  -- { key = "0",   mods = "SHIFT|CTRL",     action = act.ResetFontSize },
  -- { key = "0",   mods = "SUPER",          action = act.ResetFontSize },
  { key = "1",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "1",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "2",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "2",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "3",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "3",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "4",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "4",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "5",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "5",   mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "5",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "6",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "6",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "7",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "7",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "8",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "8",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "9",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "9",   mods = "SUPER",          action = act.DisableDefaultAssignment },
  -- { key = "=",   mods = "CTRL",           action = act.IncreaseFontSize },
  -- { key = "=",   mods = "SHIFT|CTRL",     action = act.IncreaseFontSize },
  -- { key = "=",   mods = "SUPER",          action = act.IncreaseFontSize },
  { key = "@",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "@",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "C",   mods = "CTRL",           action = act.CopyTo("Clipboard") },
  { key = "C",   mods = "SHIFT|CTRL",     action = act.CopyTo("Clipboard") },
  { key = "F",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "F",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "K",   mods = "CTRL",           action = act.ClearScrollback("ScrollbackOnly") },
  { key = "K",   mods = "SHIFT|CTRL",     action = act.ClearScrollback("ScrollbackOnly") },
  { key = "L",   mods = "CTRL",           action = act.ShowDebugOverlay },
  { key = "L",   mods = "SHIFT|CTRL",     action = act.ShowDebugOverlay },
  { key = "M",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "M",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "N",   mods = "CTRL",           action = act.SpawnWindow },
  { key = "N",   mods = "SHIFT|CTRL",     action = act.SpawnWindow },
  { key = "P",   mods = "CTRL",           action = act.ActivateCommandPalette },
  { key = "P",   mods = "SHIFT|CTRL",     action = act.ActivateCommandPalette },
  { key = "R",   mods = "CTRL",           action = act.ReloadConfiguration },
  { key = "R",   mods = "SHIFT|CTRL",     action = act.ReloadConfiguration },
  { key = "T",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "T",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  {
    key = "U",
    mods = "CTRL",
    action = act.DisableDefaultAssignment,
  },
  {
    key = "U",
    mods = "SHIFT|CTRL",
    action = act.DisableDefaultAssignment,
  },
  { key = "V", mods = "CTRL",        action = act.PasteFrom("Clipboard") },
  { key = "V", mods = "SHIFT|CTRL",  action = act.PasteFrom("Clipboard") },
  { key = "W", mods = "CTRL",        action = act.DisableDefaultAssignment },
  { key = "W", mods = "SHIFT|CTRL",  action = act.DisableDefaultAssignment },
  { key = "X", mods = "CTRL",        action = act.ActivateCopyMode },
  { key = "X", mods = "SHIFT|CTRL",  action = act.ActivateCopyMode },
  { key = "Z", mods = "CTRL",        action = act.TogglePaneZoomState },
  { key = "Z", mods = "SHIFT|CTRL",  action = act.TogglePaneZoomState },
  { key = "[", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
  { key = "]", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
  { key = "^", mods = "CTRL",        action = act.DisableDefaultAssignment },
  { key = "^", mods = "SHIFT|CTRL",  action = act.DisableDefaultAssignment },
  { key = "_", mods = "CTRL",        action = act.DecreaseFontSize },
  { key = "_", mods = "SHIFT|CTRL",  action = act.DecreaseFontSize },
  { key = "c", mods = "SHIFT|CTRL",  action = act.CopyTo("Clipboard") },
  { key = "c", mods = "SUPER",       action = act.CopyTo("Clipboard") },
  { key = "f", mods = "SHIFT|CTRL",  action = act.DisableDefaultAssignment },
  { key = "f", mods = "SUPER",       action = act.DisableDefaultAssignment },
  { key = "k", mods = "SHIFT|CTRL",  action = act.ClearScrollback("ScrollbackOnly") },
  { key = "k", mods = "SUPER",       action = act.ClearScrollback("ScrollbackOnly") },
  { key = "l", mods = "SHIFT|CTRL",  action = act.ShowDebugOverlay },
  { key = "m", mods = "SHIFT|CTRL",  action = act.DisableDefaultAssignment },
  { key = "m", mods = "SUPER",       action = act.DisableDefaultAssignment },
  { key = "n", mods = "SHIFT|CTRL",  action = act.SpawnWindow },
  { key = "n", mods = "SUPER",       action = act.SpawnWindow },
  { key = "p", mods = "SHIFT|CTRL",  action = act.ActivateCommandPalette },
  { key = "r", mods = "SHIFT|CTRL",  action = act.ReloadConfiguration },
  { key = "r", mods = "SUPER",       action = act.ReloadConfiguration },
  { key = "t", mods = "SHIFT|CTRL",  action = act.DisableDefaultAssignment },
  { key = "t", mods = "SUPER",       action = act.DisableDefaultAssignment },
  {
    key = "u",
    mods = "SHIFT|CTRL",
    action = act.CharSelect({ copy_on_select = true, copy_to = "ClipboardAndPrimarySelection" }),
  },
  { key = "v",          mods = "SHIFT|CTRL",     action = act.PasteFrom("Clipboard") },
  { key = "v",          mods = "SUPER",          action = act.PasteFrom("Clipboard") },
  { key = "w",          mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "w",          mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "x",          mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "z",          mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "{",          mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "{",          mods = "SHIFT|SUPER",    action = act.DisableDefaultAssignment },
  { key = "}",          mods = "SUPER",          action = act.DisableDefaultAssignment },
  { key = "}",          mods = "SHIFT|SUPER",    action = act.DisableDefaultAssignment },
  { key = "phys:Space", mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "PageUp",     mods = "SHIFT",          action = act.ScrollByPage(-1) },
  { key = "PageUp",     mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "PageUp",     mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "PageDown",   mods = "SHIFT",          action = act.ScrollByPage(1) },
  { key = "PageDown",   mods = "CTRL",           action = act.DisableDefaultAssignment },
  { key = "PageDown",   mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "LeftArrow",  mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "LeftArrow",  mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "RightArrow", mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "RightArrow", mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "UpArrow",    mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "UpArrow",    mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "DownArrow",  mods = "SHIFT|CTRL",     action = act.DisableDefaultAssignment },
  { key = "DownArrow",  mods = "SHIFT|ALT|CTRL", action = act.DisableDefaultAssignment },
  { key = "Insert",     mods = "SHIFT",          action = act.PasteFrom("PrimarySelection") },
  { key = "Insert",     mods = "CTRL",           action = act.CopyTo("PrimarySelection") },
  { key = "Copy",       mods = "NONE",           action = act.CopyTo("Clipboard") },
  { key = "Paste",      mods = "NONE",           action = act.PasteFrom("Clipboard") },
}

return config

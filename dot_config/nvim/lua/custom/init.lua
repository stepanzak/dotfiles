local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt


opt.foldmethod = "marker"

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

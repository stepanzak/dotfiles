---@type MappingsTable
local M = {}


M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    ["<leader>u"] = {"<cmd> Telescope undo<cr>", "undo tree"},

    ["<leader>tr"] = {"<cmd> TroubleToggle<cr>", "Trouble diagnostics"}
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<F5>"] = {
      function()
        require('dap').continue()
      end
    }
  }
}
-- more keybinds!

return M

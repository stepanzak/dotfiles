return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        html = {},
        cssls = {},
        cssmodules_ls = {},
        css_variables = {},
        emmet_language_server = {},
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "taplo",
        "debugpy",
        "harper-ls",
        "emmet-language-server",
        "css-lsp",
        "cssmodules-language-server",
        "css-variables-language-server",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "css",
      })
    end,
  },
}

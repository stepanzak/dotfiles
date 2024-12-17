return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        overrides = {
          GruvboxBlueSign = { bg = "NONE" },
          GruvboxRedSign = { bg = "NONE" },
          GruvboxPurpleSign = { bg = "NONE" },
          GruvboxYellowSign = { bg = "NONE" },
          GruvboxGreenSign = { bg = "NONE" },
          GruvboxOrangeSign = { bg = "NONE" },
          GruvboxAquaSign = { bg = "NONE" },
        },
      })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },
}

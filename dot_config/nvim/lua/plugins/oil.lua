return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
      default_file_explorer = false,
      delete_to_trash = false,
    },
    config = function(opts)
      require("oil").setup(opts)
      vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
    end,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}

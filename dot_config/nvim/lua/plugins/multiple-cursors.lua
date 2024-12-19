return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    -- version = "*", -- Use the latest tagged version
    config = true,
    cmd = {
      "MultipleCursorsAddDown",
      "MultipleCursorsAddUp",
      "MultipleCursorsMouseAddDelete",
      "MultipleCursorsAddMatches",
      "MultipleCursorsAddMatchesV",
      "MultipleCursorsAddJumpNextMatch",
      "MultipleCursorsJumpNextMatch",
      "MultipleCursorsLock",
    },
    keys = {
      { "<M-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "i", "x" } },
      { "<M-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = { "n", "i", "x" } },
      { "<M-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" } },
      { "<Leader>ma", "<Cmd>MultipleCursorsAddMatches<CR>", mode = { "n", "x" }, desc = "Add cursor at every match" },
      {
        "<Leader>mA",
        "<Cmd>MultipleCursorsAddMatchesV<CR>",
        mode = { "n", "x" },
        desc = "Cursor at every match in previous visual selection",
      },
      {
        "<M-d>",
        "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
        mode = { "n", "x" },
        desc = "Add cursor at next match",
      },
      { "<M-D>", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = { "n", "x" }, desc = "Jump to next match" },
      { "<C-M-l>", "<Cmd>MultipleCursorsLock<CR>", mode = { "n", "x" }, desc = "Lock multicursors" },
    },
    opts = {
      custom_key_maps = {
        {
          "n",
          "<Leader>msa",
          function(_, count, motion_cmd, char)
            vim.cmd("normal " .. count .. "gsa" .. motion_cmd .. char)
          end,
          "mc",
        },
      },
    },
  },
}

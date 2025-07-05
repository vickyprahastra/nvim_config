return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      current_line_blame = true,
    })

    vim.keymap.set("n", "]g", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next Git change" })
    vim.keymap.set("n", "[g", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Prev Git change" })
    vim.keymap.set("n", "gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview change" })
  end,
}

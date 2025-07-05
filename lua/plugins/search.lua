return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- ikon di UI
  cmd = "FzfLua",
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find Files (fzf)" },
    { "ff", "<cmd>FzfLua live_grep<CR>", desc = "Live Grep" },
    { "<C-b>", "<cmd>FzfLua buffers<CR>", desc = "Buffers" },
    { "fh", "<cmd>FzfLua help_tags<CR>", desc = "Help Tags" },
    -- Git commands
    { "<leader>gf", "<cmd>FzfLua git_files<CR>", desc = "Git files" },
    { "<C-g>", "<cmd>FzfLua git_status<CR>", desc = "Git status" },
    { "gc", "<cmd>FzfLua git_commits<CR>", desc = "Git commits" },
    { "gb", "<cmd>FzfLua git_branches<CR>", desc = "Git branches" },
    { "<leader>gl", "<cmd>FzfLua git_bcommits<CR>", desc = "Git buffer commits" },
  },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        preview = {
          layout = "vertical",
        },
      },
    })
  end,
}

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4", -- atau versi terbaru stabil
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    { "fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
    { "fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_config = {
          prompt_position = "top",
        },
        sorting_strategy = "ascending",
      },
    })
  end,
}


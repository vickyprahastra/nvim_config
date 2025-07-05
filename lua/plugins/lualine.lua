return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- ikon untuk filetypes, dll
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",     -- pakai tema dari colorscheme aktif
        section_separators = "",  -- kamu bisa ganti jadi ""
        component_separators = "", -- atau "│"
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "filetype", "encoding", "fileformat" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}

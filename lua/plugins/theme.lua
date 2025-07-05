return {
  "sainnhe/sonokai",
  priority = 1000,
  lazy = false,
  config = function()
    -- Pilih salah satu style sonokai:
    -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia', 'espresso'
    vim.g.sonokai_style = "default"
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_disable_italic_comment = 0
    vim.g.sonokai_transparent_background = 0

    vim.cmd([[colorscheme sonokai]])
  end,
}

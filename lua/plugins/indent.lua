return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = function()
    local hooks = require("ibl.hooks")
    local ibl = require("ibl")

    -- Hook: matikan indent level pertama
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3b4261" }) -- warna garis
      vim.api.nvim_set_hl(0, "IblScope",  { fg = "#5c6370" }) -- warna scope
    end)

    ibl.setup({
      indent = {
        char = "│",
        highlight = { "IblIndent" },
        -- matikan indent level 1
        smart_indent_cap = true,
      },
      scope = {
        enabled = true,
        highlight = { "IblScope" },
      },
    })
  end,
}

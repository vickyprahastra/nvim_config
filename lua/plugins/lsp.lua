return {
  -- LSP config utama
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Installer LSP server otomatis
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Mason: installer server
    require("mason").setup()

    -- Mason-LSP: koneksi mason ke lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = { "pyright" }, -- pastikan pyright terinstall
      automatic_installation = true,
    })

    -- LSP config
    local lspconfig = require("lspconfig")
    lspconfig.pyright.setup({})
  end,
}

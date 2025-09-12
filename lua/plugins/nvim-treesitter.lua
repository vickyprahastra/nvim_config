local opts = {
  ensure_installed = {
    "lua", 
    "python", 
    "ninja", 
    "rst", 
    'vim',
    'query',
    'markdown',
    'markdown_inline',
    "json", 
    "yaml", 
    "bash", 
    "html",
    "javascript",
  },
}

local function config()
  require('nvim-treesitter.configs').setup(opts)
end

return {
  'nvim-treesitter/nvim-treesitter',
  config = config,
  build = ':TSUpdate',
}


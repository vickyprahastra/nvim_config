-- bootstrap lazy.nvim jika belum ada
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- panggil lazy setup
require("lazy").setup("plugins")  -- ini akan mencari di folder lua/plugins/*.lua
require("config.keymaps")
require("config.options")


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("custom")
require("lazy").setup({
  { import = "plugins" },
  { import = "plugins.themes" },
  -- { import = "plugins.lsp" }
}, {
  rocks = { enabled = false }
})

-- vim.cmd("colorscheme onedark")
-- vim.cmd.colorscheme("nanode")
vim.cmd.colorscheme("conifer")

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = {
  "n:block",
  "i:block",
  "v:block",
  "c:block",
  "r:block",
}
vim.opt.mouse = ""

-- vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Wrap lines at convenient points (like spaces) instead of mid-word
vim.opt.textwidth = 0 -- Prevent hard wrapping while typing

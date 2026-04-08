-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.cmd([[
  augroup LiveServerAutoSave
    autocmd!
    autocmd InsertLeave,TextChanged * silent! write
  augroup END
]])

--WARN: Disable diagnostics only for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function(args)
    vim.diagnostic.enable(false, { bufnr = args.buf })
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = {
    "*.png",
    "*.jpg",
    "*.jpeg",
    "*.webp",
    "*.gif",
    "*.ico",
    "*.svg",
  },
  callback = function()
    local file = vim.fn.expand("%:p")

    vim.fn.jobstart({ "gio", "open", file }, { detach = true })

    vim.schedule(function()
      vim.cmd("bd!")
    end)
  end,
})

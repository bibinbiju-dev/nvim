-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ha", ":Alpha<CR>", { desc = "Open Dashboard" })
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
  LazyVim.pick("files", { root = false })()
end, { desc = "Find Files (cwd)" })

vim.keymap.set("n", "<leader>fF", function()
  LazyVim.pick("files")()
end, { desc = "Find Files (Root Dir)" })

vim.keymap.set("n", "<leader>sg", function()
  LazyVim.pick("live_grep", { root = false })()
end, { desc = "Grep (cwd)" })

vim.keymap.set("n", "<leader>sG", function()
  LazyVim.pick("live_grep")()
end, { desc = "Grep (Root Dir)" })

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
  desc = "Find Help",
})

return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>e",
      "<cmd>Yazi<cr>",
      desc = "Open Yazi (file explorer)",
    },
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Yazi in working dir",
    },
    {
      "<C-e>",
      "<cmd>Yazi toggle<cr>",
      desc = "Toggle Yazi",
    },
  },
  opts = {
    open_for_directories = true, -- IMPORTANT
    keymaps = {
      show_help = "<f1>",
    },
  },
  init = function()
    -- disable netrw (VERY IMPORTANT if using as explorer)
    vim.g.loaded_netrwPlugin = 1
  end,
}

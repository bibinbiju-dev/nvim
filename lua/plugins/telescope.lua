return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "vertical",
    },

    -- pickers = {
    --   find_files = {
    --     theme = "dropdown",
    --   },
    -- },
  },
  keys = {
    {
      "<leader>ff",
      LazyVim.pick("files", { root = false }),
      desc = "Find Files (cwd)",
    },

    {
      "<leader>fF",
      LazyVim.pick("files"),
      desc = "Find Files (Root Dir)",
    },
    {
      "<leader>sg",
      LazyVim.pick("live_grep", { root = false }),
      desc = "Grep (cwd)",
    },

    {
      "<leader>sG",
      LazyVim.pick("live_grep"),
      desc = "Grep (Root Dir)",
    },
  },
}

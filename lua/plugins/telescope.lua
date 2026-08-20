return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        vertical = {
          width = 0.9,
          height = 0.9,
          preview_height = 0.65,
        },
      },
    },

    pickers = {
      find_files = {
        layout_strategy = "horizontal",
      },
      live_grep = {
        layout_strategy = "horizontal",
      },
    },
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

return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false,
    workspaces = {
      {
        name = "main",
        path = "~/Documents",
      },
    },
    templates = {
      subdir = "templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
    },
    daily_notes = {
      folder = "Daily",
      date_format = "%d-%m-%Y",
      template = "daily.md",
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}

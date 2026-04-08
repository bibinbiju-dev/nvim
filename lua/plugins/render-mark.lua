return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" }, -- load only for markdown files
  opts = {
    heading = {
      enabled = true,
      render_modes = true,
      atx = true,
      setext = true,
      -- sign = { "󰫎 " },
      sign = true,
      width = "block",
      icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      position = "overlay",
    },

    checkbox = {
      enabled = true,
      render_modes = true,
      unchecked = {
        icon = "󰄱 ",
        highlight = "RenderMarkdownUnchecked",
      },
      checked = {
        icon = "󰱒 ",
        highlight = "RenderMarkdownChecked",
      },
    },
    code = {
      enabled = true,
      render_modes = true,
      sign = true,
    },
  },
}

return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPost", "BufNewFile" }, -- lazy load when opening files
  config = function()
    require("colorizer").setup({
      filetypes = { "css", "html", "hyprlang" },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true, -- rgb(), rgba()
        hsl_fn = true, -- hsl(), hsla()
        css = true,
        css_fn = true,
        mode = "foreground",
      },
    })
  end,
}

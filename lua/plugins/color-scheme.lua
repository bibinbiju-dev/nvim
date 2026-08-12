-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		priority = 1000,
-- 	},
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "tokyonight-night",
-- 		},
-- 	},
-- }

-- catpuccin
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}

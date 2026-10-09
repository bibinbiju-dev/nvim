return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        -- Always use vertical layout
        layout_strategy = "vertical",

        -- Prevent layout cycling to horizontal
        cycle_layout_list = { "vertical" },

        layout_config = {
          vertical = {
            width = 0.90,
            height = 0.95,

            -- Preview occupies the top section
            preview_height = 0.55,
            preview_cutoff = 20,

            -- Search prompt stays at the bottom
            prompt_position = "bottom",
          },
        },

        -- Preview settings
        preview = {
          treesitter = true,
          timeout = 250,
          filesize_limit = 1,
        },

        -- Usability
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        selection_strategy = "reset",
      })
    end,
  },
}

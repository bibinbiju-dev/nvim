return {
  {
    "nvim-telescope/telescope.nvim",

    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },

    opts = function(_, opts)
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        -- Always use vertical layout
        layout_strategy = "vertical",
        cycle_layout_list = { "vertical" },

        layout_config = {
          vertical = {
            width = 0.90,
            height = 0.95,
            preview_height = 0.55,
            preview_cutoff = 20,
            prompt_position = "bottom",
          },
        },

        -- Preview settings
        preview = {
          timeout = 250,
          filesize_limit = 10,
          highlight_limit = 1,
        },

        -- Usability
        path_display = { "truncate" },
        sorting_strategy = "ascending",
        selection_strategy = "reset",
      })

      -- Native fzf sorter settings
      opts.extensions = opts.extensions or {}
      opts.extensions.fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }
    end,

    config = function(_, opts)
      require("telescope").setup(opts)
      require("telescope").load_extension("fzf")
    end,
  },
}

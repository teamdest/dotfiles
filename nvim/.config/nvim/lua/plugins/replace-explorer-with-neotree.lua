return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
      sort_case_insensitive = true,
      window = {
        mappings = {
          ["P"] = {
            "toggle_preview",
            config = {
              use_float = true,
              -- use_image_nvim = true,
              -- use_snacks_image = true,
              -- title = 'Neo-tree Preview',
            },
          },
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = false,
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = {
            ".git",
            "DS_Store",
            "thumbs.db",
          },
        },
      },
      buffers = {
        follow_current_file = {
          enabled = false,
        },
      },
    },
  },
}

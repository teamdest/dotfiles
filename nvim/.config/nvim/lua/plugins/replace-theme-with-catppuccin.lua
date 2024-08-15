return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavor = "mocha",
      transparent_background = true,
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      show_end_of_buffer = true,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.35, -- percentage of the shade to apply to the inactive window
      },
    },
  },
}

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "catppuccin",
    opts = {
      function()
        local bufferline = require("catppuccin.groups.integrations.bufferline")
        bufferline.get = bufferline.get or bufferline.get_theme
      end,
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
      },
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      auto_integrations = true,
    },
  },
}

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        -- removes lualine_z which contains the current time, since that is already handled by zellij
        lualine_z = {},
      },
    },
  },
}

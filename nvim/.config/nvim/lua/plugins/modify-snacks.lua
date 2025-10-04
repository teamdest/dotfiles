return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = { preset = "sidebar", preview = true },
            jump = { close = false },
            auto_close = false,
            files = {
              hidden = true,
              ignored = true,
            },
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}

return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          inlayHints = {
            maxLength = 100,
            enable = true,
          },
        },
      },
    },
  },
}

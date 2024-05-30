return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        gopls = {
          cmd_env = {
            GOFLAGS = "-tags=unit,integration",
          },
        },
      },
    },
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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

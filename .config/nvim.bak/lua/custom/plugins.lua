local plugins = {
 {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,

  },
  {
    "NvChad/nvterm",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        -- disable  tab
        ["<Tab>"] = function(callback)
          callback()
        end,
        ["<S-Tab>"] = function(callback)
          callback()
        end,
     }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Golang tools
        "gopls",
        "golangci-lint",
        -- Python tools
        "pyright",
        "black",
        "ruff",
        "mypy",
        -- Lua tools
        "stylua"
      }
    }
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"go", "python", "lua"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
      ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "html",
        "json",
        "proto",
        "python",
        "sql",
        "terraform",
        "toml",
        "vim",
        "yaml",
      },
      sync_intall = true,
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ['aa'] = '@parameter.outer',
          },
        },
      },
    }
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {enabled = false},
        search = {enabled = false}
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
        })
        end,
        desc = "Flash",
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    config = function(_, _)
      require("core.utils").load_mappings("lazygit")
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
  }
}
return plugins

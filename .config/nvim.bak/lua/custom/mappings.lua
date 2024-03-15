local M = {}

M.general = {
  plugin = true,
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateLeft<CR>", "window up"},
  },
}

M.lazygit = {
  plugin = true,
  n = {
    ["<leader>lg"] = {
      "<cmd> LazyGit <CR>",
      "Run lazygit"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    },
  }
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<C-h>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Dismiss'](), '')
      end,
      "Copilot Dismiss",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<C-j>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Next'](), '')
      end,
      "Copilot Next",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<C-k>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Previous'](), '')
      end,
      "Copilot Previous",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
  }
}

return M

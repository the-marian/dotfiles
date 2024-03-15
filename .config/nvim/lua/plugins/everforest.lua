return {
  -- add gruvbox
  {
    "sainnhe/everforest",
    config = function()
      vim.g.everforest_background = "medium"
      vim.g.everforest_better_performance = 1
      vim.g.everforest_float_style = "dim"
      vim.g.everforest_dim_inactive_windows = 0
      vim.g.everforest_diagnostic_virtual_text = "colored"
      vim.g.everforest_diagnostic_text_highlight = 1
      vim.g.everforest_current_word = "grey background"
      vim.g.everforest_ui_contrast = "high"
    end,
  },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "everforest",
  --   },
  -- },
}

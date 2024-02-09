return {
  { "oxfist/night-owl.nvim" },
  { "embark-theme/vim" },
  { "folke/tokyonight.nvim" },
  { "lervag/vimtex" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
  {

    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        eslint = {},
        html = {},
        pyright = {},
        tsserver = {
          init_options = {
            preferences = {
              importModuleSpecifierPreference = "relative",
            },
          },
        },
      },
    },
  },
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "sa", -- Add surrounding in Normal and Visual modes
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding (to the right)
        find_left = "sF", -- Find surrounding (to the left)
        highlight = "sh", -- Highlight surrounding
        replace = "sr", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`

        suffix_last = "l", -- Suffix to search with "prev" method
        suffix_next = "n", -- Suffix to search with "next" method
      },
    },
  },
  { "folke/flash.nvim", enabled = false },
}

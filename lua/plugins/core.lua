return {
  { "oxfist/night-owl.nvim" },
  { "embark-theme/vim" },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  -- {
  --   'git@gitlab.com:gitlab-org/editor-extensions/gitlab.vim.git',
  --   'git@gitlab.com:gitlab-org/editor-extensions/gitlab-lsp.git',
  --   event = { "BufReadPre", "BufNewFile" }, -- Activate when a file is created/opened
  --   ft = { "javascript", "typescript", "javascriptreact", "typescriptreact", "python", "ruby" }, -- Activate when a supported filetype is open
  --   cond = function()
  --     return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= "" -- Only activate if token is present in environment variable (remove to use interactive workflow)
  --   end,
  --   opts = {
  --     statusline = {
  --       enabled = true, -- Hook into the builtin statusline to indicate the status of the GitLab Duo Code Suggestions integration
  --     },
  --   },
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
    colorscheme = "onedark",
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

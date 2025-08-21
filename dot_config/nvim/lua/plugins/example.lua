-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- lua with lazy.nvim
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  -- {
  --   "akinsho/toggleterm.nvim",
  --   version = "*",
  --   config = true,
  --   opts = {--[[ things you want to change go here]]
  --   { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" }
  --   },
  -- },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
      -- "ibhagwan/fzf-lua", -- optional
      -- "echasnovski/mini.pick", -- optional
    },
    config = true,
    keys = {
      { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
    },
  },

  -- override nvim-cmp and add cmp-emoji
  -- {
  --   "hrsh7th/nvim-cmp",
  --   -- dependencies = { "hrsh7th/cmp-emoji" },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     table.insert(opts.config.sources, { name = "emoji" })
  --   end,
  -- },

  -- vimtex
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  -- {
  --   "allaman/emoji.nvim",
  --   version = "1.0.0", -- optionally pin to a tag
  --   -- ft = "markdown", -- adjust to your needs
  --   dependencies = {
  --     -- util for handling paths
  --     "nvim-lua/plenary.nvim",
  --     -- optional for nvim-cmp integration
  --     -- "hrsh7th/nvim-cmp",
  --     -- optional for telescope integration
  --     "nvim-telescope/telescope.nvim",
  --     -- optional for fzf-lua integration via vim.ui.select
  --     "ibhagwan/fzf-lua",
  --   },
  --   opts = {
  --     -- default is false, also needed for blink.cmp integration!
  --     enable_cmp_integration = true,
  --     -- optional if your plugin installation directory
  --     -- is not vim.fn.stdpath("data") .. "/lazy/
  --     -- plugin_path = vim.fn.expand("$HOME/plugins/"),
  --   },
  --   config = function(_, opts)
  --     require("emoji").setup(opts)
  --     -- optional for telescope integration
  --     local ts = require("telescope").load_extension("emoji")
  --     vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "[S]earch [E]moji" })
  --   end,
  -- },
}

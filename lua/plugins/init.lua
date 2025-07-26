return { {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("configs.autosave_conf").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    requires = "kyazdani42/nvim-web-devicons",
  },

  {
    "CRAG666/code_runner.nvim",
    cmd = "RunCode",
    config = function()
      require("configs.coderunner_conf").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = "CodeSnap",
    config = function()
      require("configs.CodeSnap_conf").setup()
    end,
  },
  {
    "SUSTech-data/neopyter",
    cmd = "Neopyter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter", -- neopyter don't depend on `nvim-treesitter`, but does depend on treesitter parser of python
      "AbaoFromCUG/websocket.nvim", -- for mode='direct'
    },

    ---@type neopyter.Option
    opts = {
      mode = "direct",
      remote_address = "127.0.0.1:9001",
      file_pattern = { "*.ju.*" },
    },
  },
}

return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  
  
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  -- ~/.config/nvim/lua/plugins/init.lua
-- ...
  
-- plugins/rest.lua
{ 
 "mistweaverco/kulala.nvim",
    keys = {
      { "<leader>rs", desc = "Send request" },
      { "<leader>ra", desc = "Send all requests" },
      { "<leader>rb", desc = "Open scratchpad" },
    },
    ft = {"http", "rest"},
    opts = {
      global_keymaps = true,
      global_keymaps_prefix = "<leader>r",
      kulala_keymaps_prefix = "",
    },
  },

{
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "csharp-language-server",
      "omnisharp",
        "xmlformatter",
        "stylua",
        "bicep-lsp",
        "html-lsp",
        "css-lsp",
        "csharpier",
        "prettier",
        "json-lsp"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- ensure_installed = "all"
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c_sharp",
        "bicep",
        "json",
      },
    },
  },
}

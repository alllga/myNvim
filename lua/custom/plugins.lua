local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    ft = {"python", "javascript", "typescript"},
    config = function()
      require("custom.configs.null-ls")
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "ruff",
        "mypy",
        "eslint-lsp",
        "typescript-language-server",
        "prettier",
        "phpcs",
        "phpcbf"
      }
    }
  }
}

return plugins

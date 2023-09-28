local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilites = base.capabilities

local lspconfig = require "lspconfig"

-- python
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = {"python"}
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  init_options = {
    preferences = {
      disableSuggestions = true,
    }
  }
})

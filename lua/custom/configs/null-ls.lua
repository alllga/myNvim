local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
    -- python
    formatting.black,
    lint.mypy,
    lint.ruff,
    -- javascript & typescript
    lint.eslint,
    formatting.prettier,
    -- php
    lint.phpcs,
    formatting.phpcbf,
  },
})


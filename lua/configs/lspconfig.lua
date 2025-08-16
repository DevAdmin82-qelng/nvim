local nvlsp = require("nvchad.configs.lspconfig")

-- Load the lspconfig plugin
local lspconfig = require("lspconfig")

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

local pid = vim.fn.getpid()

-- Enable inline diagnostics (virtual text)
vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- could be "■", "▎", "x"
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

local mason_path = vim.fn.stdpath("data") .. "/mason/bin/OmniSharp"

lspconfig.omnisharp.setup({
  cmd = { mason_path, "--languageserver", "--hostPID", tostring(pid) },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})

-- read :h vim.lsp.config for changing options of lsp servers 

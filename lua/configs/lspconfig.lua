local nvlsp = require("nvchad.configs.lspconfig")

-- Load the lspconfig plugin
local lspconfig = require("lspconfig")

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

local pid = vim.fn.getpid()

local mason_path = vim.fn.stdpath("data") .. "/mason/bin/OmniSharp"

lspconfig.omnisharp.setup({
  cmd = { mason_path, "--languageserver", "--hostPID", tostring(pid) },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})

-- read :h vim.lsp.config for changing options of lsp servers 

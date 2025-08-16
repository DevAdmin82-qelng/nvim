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

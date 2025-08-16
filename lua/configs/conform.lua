local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    json = { "jq" }, -- pretty-print JSON
    ["rest-result"] = { "jq" }, -- format rest.nvim result buffers as JSON
  },
}

return options

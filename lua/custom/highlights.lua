
-- custom/highlights.lua
local M = {}

M.override = {
  ["@type"] = { fg = "#00FF00" },          -- user-defined types
  ["@type.builtin"] = { fg = "#00FF00" },  -- built-in types
  ["@type.definition"] = { fg = "#00FF00" },
  ["@type.qualifier"] = { fg = "#00FF00" },
}

M.add = {}

return M

require("stoneren.core")
require("stoneren.lazy")

local g = vim.g
local alpha_value = 0.85

if vim.g.neovide then
  -- vim.g.neovide_window_blurred = true
  g.neovide_transparency = alpha_value
end

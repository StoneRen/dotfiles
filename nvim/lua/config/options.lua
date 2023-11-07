-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- clipboard
opt.clipboard = "unnamedplus" -- 与系统粘贴板同步

-- line wrapping
-- 长文本换行
opt.wrap = true
-- 保留虚拟行的缩进，只在启用wrap时可见
opt.breakindent = true

-- appearance
if os.getenv('COLORTERM') == 'truecolor' or os.getenv('COLORTERM') == '24bit' or vim.g.neovide then
  opt.termguicolors = true
  -- vim.cmd([[ set t_8f=^[[38;2;%lu;%lu;%lum ]])
  -- vim.cmd([[ set t_8b=^[[48;2;%lu;%lu;%lum ]])
end

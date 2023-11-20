-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Editor Options
opt.encoding = "UTF-8"
opt.swapfile = false
opt.backup = false
opt.autochdir = true
-- 总是显示光标位置
opt.ruler = true

-- line numbers
opt.relativenumber = false

-- line wrapping
-- 长文本换行
opt.wrap = true
-- 保留虚拟行的缩进，只在启用wrap时可见
opt.breakindent = true

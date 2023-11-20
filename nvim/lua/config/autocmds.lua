-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd

-- 自动切换到当前目录
-- 不知道为啥lazyvim 设置 opt.autochdir 不管用，只能单独设置
local chdir = function(args)
  vim.cmd("set autochdir")
  vim.cmd("pwd")
end

local chdirHandler = {
  once = true,
  callback = function(args)
    chdir(args)
  end,
}

-- 当使用 tabnew 命令时
-- autocmd("TabNew", chdirHandler)

-- 当新建一个 buffer 的时候
-- autocmd("BufNew", chdirHandler)

autocmd({ "BufNew", "TabNew" }, chdirHandler)

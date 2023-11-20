-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("TabNew", {
  once = true,
  callback = function(args)
    vim.cmd("set autochdir")
    vim.cmd("pwd")
  end,
})

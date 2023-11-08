-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 下面的配置,取自: https://github.com/StoneRen/dotfiles--/blob/main/nvim/lua/stoneren/core/keymaps.lua
local global = vim.g
local bind = vim.keymap.set
local setkeymap = vim.api.nvim_set_keymap
local defaultKeyOption = { noremap = true, silent = true }

-- Map <leader> to space
global.mapleader = " "
global.maplocalleader = " "

-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-for-neovim/
--[[
vim.bind({mode}, {lhs}, {rhs}, {opts})

mode:
n: 普通模式
i: 插入模式
x：可视模式
s: 选择模式
v: 视觉+选择
t: 终端模式
o：操作员待定
'': 一个空字符串。相当于 n + v + o

lhs: 绑定的快捷键
rhs: 执行的动作

opts: 设置
desc: 描述
remap: 布尔值，绑定键是否递归。默认值为false，建议不要启动
buffer: 可以是布尔值或数字。如果我们分配布尔值 true ，这意味着键绑定将只在当前文件中有效。如果我们分配一个数字，它需要是一个打开的缓冲区的“id”
silent: 布尔值，确定绑定键是否显示消息
expr: 通过vimscript或lua计算 {rhs} 的值
--]]
------------------------------------------------------------------
-- https://github.com/chloneda/vim-cheatsheet
-- 看这一篇就够了
------------------------------------------------------------------

-- 筛选最常用的快捷键
-- bi                  # 单词前加入字符
-- ea                  # 单词后加入字符
--                     # -------------------- 翻屏移动 ----------------------
-- zz                  # 调整光标所在行到屏幕中央
-- zt                  # 调整光标所在行到屏幕上部
-- zb                  # 调整光标所在行到屏幕下部
--                     # -------------------- 编程辅助移动 ------------------
-- %                   # 不仅匹配跳转到对应的 {} () []，而且能在 if、else、elseif 之间跳跃
-- gd                  # 跳转到局部变量定义处，即光标下的单词的定义
-- gD                  # 跳转到全局变量定义处，即光标下的单词的定义
-- gf                  # 打开名称为光标下文件名的文件
-- [[                  # 跳转到上一个顶层函数，例如 C 语言以大括号分隔
-- ]]                  # 跳转到下一个顶层函数，例如 C 语言以大括号分隔
-- [m                  # 跳转到上一个成员函数开头
-- ]m                  # 跳转到下一个成员函数开头
-- ]M                  # 跳转到下一个成员函数结尾
-- [M                  # 跳转到上一个成员函数结尾
-- [/                  # 跳转到当前注释块开始处
-- ]/                  # 跳转到当前注释块结尾处
-- ]#                  # 跳转到上一个 if 或者 else 处
-- [#                  # 跳转到下一个 else 或者 endif 处
-- ~                   # 转换大小写
-- gUiw                # 将单词转成大写
-- guiw                # 将当前单词转成小写
-- guu                 # 全行转为小写
-- gUU                 # 全行转为大写
--
--                     # -------------------- 文本对象 ------------------
-- aw                  # 操作整个单词，不包括分隔符（aw: a word）
-- aW                  # 操作整个单词，包括分隔符（aW: a Word）
-- iw                  # 操作整个单词，不包括分隔符（iw: inner word）
-- iW                  # 操作整个单词，包括分隔符（iW: inner Word）
-- is                  # 操作整个句子，不包括分隔符 (s: sentence）

-- basic keymaps
bind("n", "<leader>w", ":w<CR>") -- save
bind("n", "<leader>q", ":q<CR>") -- quit
bind("n", "<leader>qq", ":qa!<CR>") -- quit all without saving
bind("n", "<leader>,", ":tabnew ~/.config/nvim/init.lua")
bind("n", "<leader>a", ":keepjumps normal! ggVG<cr>", defaultKeyOption) -- select all

-- https://neovide.dev/faq.html#how-can-i-use-cmd-ccmd-v-to-copy-and-paste
if vim.g.neovide then
  bind("n", "<D-s>", ":w<CR>") -- Save
  bind("v", "<D-c>", '"+y') -- Copy
  bind("n", "<D-v>", '"+P') -- Paste normal mode
  bind("v", "<D-v>", '"+P') -- Paste visual mode
  bind("c", "<D-v>", "<C-R>+") -- Paste command mode
  bind("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
setkeymap("", "<D-s>", ":w<CR>", defaultKeyOption)
setkeymap("", "<D-v>", "+p<CR>", defaultKeyOption)
setkeymap("!", "<D-v>", "<C-R>+", defaultKeyOption)
setkeymap("t", "<D-v>", "<C-R>+", defaultKeyOption)
setkeymap("v", "<D-v>", "<C-R>+", defaultKeyOption)

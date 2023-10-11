local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Globol Settings --
option.showmode = false     -- 模式显示
option.backspace = { "indent", "eol", "start" }     -- <Backspace>作用
-- This way you will always insert spaces.
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
-- 智能缩进，并不是很智能
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true            -- 行号
option.relativenumber = true    -- 相对行号
option.wildmenu = true          -- 命令行tab补全，<C-p><C-n>上下切换选项
option.hlsearch = true         -- 禁用搜索高亮
-- 模糊搜索
option.ignorecase = true
option.smartcase = true
-- 自动补全
option.completeopt = { "menu", "menuone" }
option.cursorline = true        -- 高亮当前行
option.termguicolors = true     -- 应用真颜色
option.signcolumn = "yes"       -- 左侧空列，用来调试断点
option.autoread = true          -- 文件更改自动读取
option.title = true             -- 打开时窗口标题栏显示为对应字符串
option.swapfile = false         -- 禁止交换文件生成
option.backup = false           -- 不创建备份文件
option.updatetime = 50
option.mouse = "a"              --启用鼠标
option.undofile = true
-- option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.exrc = true              -- 自动启用一些.lua.nvim文件
option.wrap = false             -- 启用自动折行
option.splitright = true        -- 自动左侧显示

-- Buffer Settings --
buffer.fileenconding = "utf-8"  -- UTF-8

-- Global Settings --
global.mapleader = " "          -- 主键

-- Key mappings --
vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>")    -- 切换buffer
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")    -- 关闭buffer
vim.keymap.set({"n", "v"}, "<C-l>", "<cmd>nohlsearch<CR>")    -- <C-l>清除搜索高亮
vim.keymap.set({"n", "v"}, "<leader>mkdp", "<cmd>MarkdownPreview<CR>")    -- <C-l>清除搜索高亮

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")        -- 可视模式移动 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")        

vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")   -- 剪切板

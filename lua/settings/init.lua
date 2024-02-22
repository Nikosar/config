vim.cmd [[
set autoindent
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4

set nu
set relativenumber

set nohlsearch
set incsearch
set scrolloff:8
set updatetime:50
]]

vim.g.mapleader = " "

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
--  delete without copy
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("i", "<c-c>", "<esc>")

-- remove arrows
vim.keymap.set({"n","v","i"}, "<Up>", "")
vim.keymap.set({"n","v","i"}, "<Down>", "")
vim.keymap.set({"n","v","i"}, "<Left>", "")
vim.keymap.set({"n","v","i"}, "<Right>", "")

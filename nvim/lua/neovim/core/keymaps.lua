-- set leader key to space
vim.g.mapleader = " "

local map = vim.keymap.set
local opts = {noremap = true, silent = true}

--Remap ESC to jj and jk
map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)


-- Save file while in normal and insert mode
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-S>", "<Esc>:w<CR>", opts)

--Lazygit
map("n", "<leader>gg", ":LazyGit<CR>", opts)
map("i", "<leader>gg", "<Esc>:LazyGit<CR>", opts)


map("i", "<C-Q>", ":q<CR>", opts)
map("n", "<C-Q>", ":q<CR>", opts)

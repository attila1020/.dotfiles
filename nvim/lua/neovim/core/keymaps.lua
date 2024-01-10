-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = {noremap = true, silent = true}

-- Save file while in normal and insert mode
keymap.set("n", "<C-s>", ":w<CR>", opts)
keymap.set("i", "<C-S>", "<Esc>:w<CR>", opts)

--Lazygit
keymap.set("n", "<leader>gg", ":LazyGit<CR>", opts)
keymap.set("i", "<leader>gg", "<Esc>:LazyGit<CR>", opts)

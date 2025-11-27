local map = vim.keymap.set

-- <leader> = Space
vim.g.mapleader = " "

-- NvimTree = Space+e 
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
-- Next buffer = Shift+l
map("n", "<S-l>", ":bnext<CR>", { silent = true })
-- Previous buffer = Shift+h
map("n", "<S-h>", ":bprevious<CR>", { silent = true })


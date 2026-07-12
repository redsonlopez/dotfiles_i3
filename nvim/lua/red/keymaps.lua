local map = vim.keymap.set

-- <leader> = Space
vim.g.mapleader = " "

-- NvimTree = Space+e 
map("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
-- Next buffer = Shift+l
map("n", "<S-l>", ":bnext<CR>", { silent = true })
-- Previous buffer = Shift+h
map("n", "<S-h>", ":bprevious<CR>", { silent = true })

map("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })
map("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { silent = true })


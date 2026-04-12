-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jkl; navigation
vim.keymap.set({ "n", "v", "x", "o" }, "j", "<Left>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "x", "o" }, "k", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
vim.keymap.set({ "n", "v", "x", "o" }, "l", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.keymap.set({ "n", "v", "x", "o" }, ";", "<Right>", { noremap = true, silent = true })

-- Window navigation
vim.keymap.set("n", "<C-w>j", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>k", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>l", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-w>;", "<C-w>l", { noremap = true, silent = true })

-- Remap ; (find next char for f/t) to '
vim.keymap.set({ "n", "v", "x", "o" }, "'", ";", { noremap = true, silent = true })

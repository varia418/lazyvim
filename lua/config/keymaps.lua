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

vim.api.nvim_create_autocmd("User", {
  pattern = "MiniFilesBufferCreate",
  callback = function(args)
    local buf = args.data.buf_id
    -- Restore normal up/down movement inside mini.files
    vim.keymap.set("n", "k", "j", { buffer = buf, noremap = true, silent = true })
    vim.keymap.set("n", "l", "k", { buffer = buf, noremap = true, silent = true })
    -- go_out (was h)
    vim.keymap.set("n", "j", "<cmd>lua MiniFiles.go_out()<cr>", { buffer = buf, noremap = true, silent = true })
    -- go_in (was l)
    vim.keymap.set("n", ";", "<cmd>lua MiniFiles.go_in()<cr>", { buffer = buf, noremap = true, silent = true })
  end,
})

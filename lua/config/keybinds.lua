vim.g.mapleader = " "
vim.keymap.set("n", "<leader>r", vim.cmd.write, { desc = "Write buffer" })
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open Netrw" })

-- Window Splitting
vim.keymap.set("n", "<leader>y", ":split<CR><C-w>w", { desc = "Horizontal Window Split" })
vim.keymap.set("n", "<leader>x", ":vsplit<CR><C-w>w", { desc = "Vertical Window Split" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go left window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go right window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go down window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go up window" })

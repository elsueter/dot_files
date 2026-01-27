vim.keymap.set({ "n", "i" }, "<leader>ws", "<C-w>s<CR>", { desc = "[W]indow [S]plit horizontally" })
vim.keymap.set({ "n", "i" }, "<leader>wv", "<C-w>v<CR>", { desc = "[W]indow Split [V]ertically" })

vim.keymap.set({ "n", "i" }, "<C-s>", "<C-\\><C-n>:update<CR>", { desc = "[S]ave" })
vim.keymap.set({ "n", "i" }, "<C-q>", "<C-\\><C-n>:wq<CR>", { desc = "[S]ave and [Q]uit" })

vim.keymap.set({ "n", "i" }, "<leader><tab><tab>", "<C-\\><C-n>:tabnew<CR>", { desc = "New [Tab]" })
vim.keymap.set({ "n", "i" }, "<leader><tab>]", "<C-\\><C-n>:+tabnext<CR>", { desc = "Move to next [Tab]" })
vim.keymap.set({ "n", "i" }, "<leader><tab>[", "<C-\\><C-n>:-tabnext<CR>", { desc = "Move to previous [Tab]" })

vim.keymap.set({ "n", "i" }, "<leader>gg", "<C-\\><C-n>:Neogit<CR>", { desc = "[G]it" })

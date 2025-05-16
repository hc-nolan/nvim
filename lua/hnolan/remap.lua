vim.g.mapleader = " "

-- BUFFER
vim.keymap.set("n", "<leader>[", vim.cmd.bp, { desc = "Next buffer" })
vim.keymap.set("n", "<leader>]", vim.cmd.bn, { desc = "Previous buffer" })

-- NAVIGATION
-- in visual mode, move highlighted lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line down" })

-- keep cursor in the middle when paging or searching
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous match" })

-- YANK
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy selection to clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy current line to clipboard" })

-- WINDOW
-- open/closing windows
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>s", { desc = "Open window (horizontal split)" })
vim.keymap.set({ "n", "v" }, "<leader>wv", "<C-w>v", { desc = "Open window (vertical split)" })

-- for moving between windows
vim.keymap.set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Move right to window" })
vim.keymap.set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Move left to window" })
vim.keymap.set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Move down to window" })
vim.keymap.set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Move up to window" })

-- resize windows
vim.keymap.set({ "n", "v" }, "<leader>,", "<C-w>-", { desc = "Decrease horizontal window size" })
vim.keymap.set({ "n", "v" }, "<leader>.", "<C-w>+", { desc = "Increase horizontal window size" })
vim.keymap.set({ "n", "v" }, "<leader><", "<C-w><", { desc = "Decrease vertical window size" })
vim.keymap.set({ "n", "v" }, "<leader>>", "<C-w>>", { desc = "Increase vertical window size" })

-- window layout rotate
vim.keymap.set({ "n", "v" }, "<leader>wr", "<C-w>r")
vim.keymap.set({ "n", "v" }, "<leader>wR", "<C-w>R")
vim.keymap.set({ "n", "v" }, "<leader>wK", "<C-w>K")
vim.keymap.set({ "n", "v" }, "<leader>wJ", "<C-w>J")
vim.keymap.set({ "n", "v" }, "<leader>wH", "<C-w>H")
vim.keymap.set({ "n", "v" }, "<leader>wL", "<C-w>L")

-- move window to new tab
vim.keymap.set({ "n", "v" }, "<leader>wt", "<C-w>T")

-- TERMINALS
vim.keymap.set({ "n", "v" }, "<leader>tv", ":vsplit term://zsh<CR>a", { desc = "Open terminal in vertical split" })
vim.keymap.set({ "n", "v" }, "<leader>th", ":split term://zsh<CR>a", { desc = "Open terminal in horizontal split" })
vim.keymap.set({ "n", "v" }, "<leader>tt", ":term zsh<CR>a", { desc = "Open terminal in new buffer" })
-- map <Esc> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- LSP
vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", { desc = "Open LSP diagnostics" })
vim.keymap.set({ "n", "v" }, "<leader>r", ":lua vim.lsp.buf.rename()<CR>", { desc = "LSP: Rename current object" })

-- folds
vim.keymap.set("n", "<leader>zo", "zO", { desc = "Recursively open all folds under cursor" })
vim.keymap.set("n", "<leader>zc", "zc", { desc = "Recursively toggle all folds under cursor" })

vim.keymap.set({ "n", "v" }, "<Tab>", ">>", { desc = "Line indent: increase" })
vim.keymap.set({ "n", "v" }, "<S-Tab>", "<<", { desc = "Line indent: decrease" })

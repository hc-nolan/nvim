vim.g.mapleader = " "
local set = vim.keymap.set

-- BUFFER
set("n", "<leader>[", vim.cmd.bp, { desc = "Next buffer" })
set("n", "<leader>]", vim.cmd.bn, { desc = "Previous buffer" })

-- NAVIGATION
-- in visual mode, move highlighted lines up/down
set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line up" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line down" })

-- keep cursor in the middle when paging or searching
set("n", "<C-d>", "<C-d>zz", { desc = "Page down" })
set("n", "<C-u>", "<C-u>zz", { desc = "Page up" })
set("n", "n", "nzzzv", { desc = "Next match" })
set("n", "N", "Nzzzv", { desc = "Previous match" })

-- YANK
-- yank to system clipboard
set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy selection to clipboard" })
set("n", "<leader>Y", '"+Y', { desc = "Copy current line to clipboard" })

-- WINDOW
-- open/closing windows
set({ "n", "v" }, "<leader>wh", "<C-w>s", { desc = "Open window (horizontal split)" })
set({ "n", "v" }, "<leader>wv", "<C-w>v", { desc = "Open window (vertical split)" })

-- for moving between windows
set({ "n", "v" }, "<C-l>", "<C-w>l", { desc = "Move right to window" })
set({ "n", "v" }, "<C-h>", "<C-w>h", { desc = "Move left to window" })
set({ "n", "v" }, "<C-j>", "<C-w>j", { desc = "Move down to window" })
set({ "n", "v" }, "<C-k>", "<C-w>k", { desc = "Move up to window" })

-- resize windows
set({ "n", "v" }, "<leader>,", "<C-w>-", { desc = "Decrease horizontal window size" })
set({ "n", "v" }, "<leader>.", "<C-w>+", { desc = "Increase horizontal window size" })
set({ "n", "v" }, "<leader><", "<C-w><", { desc = "Decrease vertical window size" })
set({ "n", "v" }, "<leader>>", "<C-w>>", { desc = "Increase vertical window size" })

-- window layout rotate
set({ "n", "v" }, "<leader>wr", "<C-w>r")
set({ "n", "v" }, "<leader>wR", "<C-w>R")
set({ "n", "v" }, "<leader>wK", "<C-w>K")
set({ "n", "v" }, "<leader>wJ", "<C-w>J")
set({ "n", "v" }, "<leader>wH", "<C-w>H")
set({ "n", "v" }, "<leader>wL", "<C-w>L")

-- move window to new tab
set({ "n", "v" }, "<leader>wt", "<C-w>T")

-- TERMINALS
set({ "n", "v" }, "<leader>tv", ":vsplit term://zsh<CR>a", { desc = "Open terminal in vertical split" })
set({ "n", "v" }, "<leader>th", ":split term://zsh<CR>a", { desc = "Open terminal in horizontal split" })
set({ "n", "v" }, "<leader>tt", ":term zsh<CR>a", { desc = "Open terminal in new buffer" })
-- map <Esc> to exit terminal mode
set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- LSP
set("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", { desc = "Open LSP diagnostics" })
set({ "n", "v" }, "<leader>r", ":lua vim.lsp.buf.rename()<CR>", { desc = "LSP: Rename current object" })

-- folds
set("n", "<leader>zo", "zO", { desc = "Recursively open all folds under cursor" })
set("n", "<leader>zc", "zc", { desc = "Recursively toggle all folds under cursor" })

set({ "n", "v" }, "<Tab>", ">>", { desc = "Line indent: increase" })
set({ "n", "v" }, "<S-Tab>", "<<", { desc = "Line indent: decrease" })

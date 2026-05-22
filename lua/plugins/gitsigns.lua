vim.pack.add({
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
})

vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Gitsigns: diff" })

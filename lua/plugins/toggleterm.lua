vim.pack.add({
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
})
require("toggleterm").setup({})

vim.keymap.set({ "n", "v" }, "<leader>tt", ":ToggleTerm<CR>", { desc = "Toggleterm: Toggle" })
vim.keymap.set({ "n", "v" }, "<leader>tn", ":TermNew<CR>", { desc = "Toggleterm: New term" })

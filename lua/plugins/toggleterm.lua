vim.pack.add({
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
})
require("toggleterm").setup({ size = 80 })

vim.keymap.set({ "n", "v" }, "<leader>tt", ":ToggleTerm direction='vertical'<CR>", { desc = "Toggleterm: Toggle" })
vim.keymap.set({ "n", "v" }, "<leader>tn", ":TermNew<CR>", { desc = "Toggleterm: New term" })

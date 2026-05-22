vim.pack.add({
	{ src = "https://github.com/smoka7/hop.nvim" },
})
require("hop").setup({
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
})
vim.keymap.set({ "n", "v" }, "<leader>h", "<cmd>HopWord<cr>", { desc = "Hop to word" })

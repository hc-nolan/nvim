vim.pack.add({
	{ src = "https://github.com/hc-nolan/submarine.nvim" },
	{ src = "https://github.com/folke/snacks.nvim" },
})
vim.keymap.set("n", "<leader>sub", function()
	require("submarine").pick()
end)

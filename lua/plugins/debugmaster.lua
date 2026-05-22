vim.pack.add({
	{ src = "https://github.com/miroshQa/debugmaster.nvim" },
})

vim.keymap.set({ "n", "v" }, "<leader>d", function()
	require("debugmaster").mode.toggle()
	vim.keymap.set("t", "<C-/>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
end, { nowait = true })

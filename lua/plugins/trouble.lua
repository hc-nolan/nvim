vim.pack.add({
	{ src = "https://github.com/folke/trouble.nvim" },
})
require("trouble").setup()

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble: Toggle diagnostics " })
vim.keymap.set(
	"n",
	"<leader>ls",
	"<cmd>Trouble lsp_document_symbols win.position=right<cr>",
	{ desc = "Trouble: Toggle LSP document symbols " }
)
vim.keymap.set(
	"n",
	"<leader>lx",
	"<cmd>Trouble lsp toggle win.position=left<cr>",
	{ desc = "Trouble: Toggle LSP defs/refs " }
)

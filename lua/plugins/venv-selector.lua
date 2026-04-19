-- lua/plugins/venv-selector.lua
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mfussenegger/nvim-dap" },
	{ src = "https://github.com/mfussenegger/nvim-dap-python" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/linux-cultist/venv-selector.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

require("venv-selector").setup({
	auto_refresh = true,
	search_venv_managers = true,
	search_workspace = true,
})

vim.keymap.set("n", ",v", "<cmd>VenvSelect<cr>", { desc = "Select Python venv" })

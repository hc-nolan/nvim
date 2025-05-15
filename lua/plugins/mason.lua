return {
	{
		"mason-org/mason.nvim",
		config = true,
		keys = {
			{
				"<leader>ma",
				"<cmd>Mason<cr>",
				desc = "Mason: open",
			},
			{
				"<leader>mu",
				"<cmd>MasonUpdate<cr>",
				desc = "Mason: update",
			},
			{
				"<leader>mi",
				"<cmd>MasonInstall<cr>",
				desc = "Mason: install",
			},
		},
	},
	{ "williamboman/mason-lspconfig.nvim" },
}

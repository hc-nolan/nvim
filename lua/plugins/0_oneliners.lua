return {
	{ "pearofducks/ansible-vim" },
	{ "luisiacc/gruvbox-baby", priority = 1000 },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{ "m4xshen/hardtime.nvim", dependencies = { "MunifTanjim/nui.nvim" }, opts = {} },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "Vimjas/vim-python-pep8-indent" },
	{ "tmhedberg/SimpylFold" },
	{ "mbbill/undotree", keys = { { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Undotree: toggle" } } },
}

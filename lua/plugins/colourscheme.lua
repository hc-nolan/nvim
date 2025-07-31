return {
	{
		"luisiacc/gruvbox-baby",
		priority = 1000,
		config = function()
			vim.g.gruvbox_baby_function_style = "NONE"
			vim.g.gruvbox_baby_keyword_style = "italic"
			-- Enable telescope theme
			vim.g.gruvbox_baby_telescope_theme = 1
			vim.o.background = "dark"
		end,
	},
	{
		"vague2k/vague.nvim",
		priority = 1000,
	},
}

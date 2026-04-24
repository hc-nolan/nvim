vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/hrsh7th/nvim-cmp" },
	{
		src = "https://github.com/epwalsh/obsidian.nvim",
	},
})

require("obsidian").setup({
	workspaces = {
		{
			name = "vault",
			path = "~/repos/work",
		},
	},
	completion = {
		nvim_cmp = true,
		min_chars = 2,
	},
	templates = {
		folder = "_templates",
		date_format = "%Y-%m-%d",
		time_format = "%H:%M",
	},
	picker = {
		name = "telescope.nvim",
		note_mappings = {
			-- Create a new note from your query.
			new = "<C-x>",
			-- Insert a link to the selected note.
			insert_link = "<C-l>",
		},
	},
})

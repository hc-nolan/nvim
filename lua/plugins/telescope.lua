return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		defaults = {
			-- winblend = 10,
			-- prompt_prefix = "󰳟 ",
			-- selection_caret = " ",
			-- Below are recommended by gruvbox-baby: https://github.com/luisiacc/gruvbox-baby
			-- borderchars = {
			-- prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
			-- results = { " " },
			-- preview = { " " },
			-- },
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				-- builtin.find_files(themes.get_ivy())
				builtin.find_files()
			end,
			desc = "Telescope: find files",
		},
		{
			"<leader>fg",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				-- builtin.live_grep(themes.get_cursor())
				builtin.live_grep()
			end,
			desc = "Telescope: live grep",
		},
		{
			"<leader>fb",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.buffers(themes.get_dropdown())
			end,
			-- "<cmd>Telescope buffers<cr>",
			desc = "Telescope: buffers",
		},
		{
			"<leader>fh",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.help_tags(themes.get_ivy())
			end,
			desc = "Telescope: help files",
		},
		{
			"<leader>fr",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.git_files(themes.get_ivy())
			end,
			desc = "Telescope: git (repo) files",
		},
		{
			"<leader>fo",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.vim_options(themes.get_ivy())
			end,
			desc = "Telescope: nvim options",
		},
		{
			"<leader>fc",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.commands(themes.get_ivy())
			end,
			desc = "Telescope: nvim commands",
		},
		{
			"<leader>ld",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.lsp_definitions(themes.get_ivy())
			end,
			desc = "Telescope: LSP definitions",
		},
		{
			"<leader>lr",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.lsp_references(themes.get_ivy())
			end,
			desc = "Telescope: LSP references",
		},
		{
			"<leader>ls",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.lsp_symbols(themes.get_ivy())
			end,
			desc = "Telescope: LSP symbols",
		},
		{
			"<leader>lu",
			function()
				local builtin = require("telescope.builtin")
				local themes = require("telescope.themes")
				builtin.lsp_incoming_calls(themes.get_ivy())
			end,
			desc = "Telescope: LSP incoming calls",
		},
	},
}

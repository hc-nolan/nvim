return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			event_handlers = {
				--   {
				--     event = "file_open_requested"a
				--     handler = function()
				--       require("neo-tree.command").execute({ action = "close" })
				--     end
				--   },
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_by_name = {
						".idea",
						"venv",
						".venv",
					},
				},
			},
			window = {
				position = "left",
				width = 40,
			},
			auto_clean_after_session_restore = true,
		})
	end,
	keys = {
		{
			"\\",
			"<cmd>Neotree toggle<cr>",
			mode = { "n", "v" },
			desc = "Neotree: toggle",
		},
		{
			"|",
			"<cmd>Neotree reveal<cr>",
			mode = { "n", "v" },
			desc = "Neotree: reveal current file",
		},
	},
}

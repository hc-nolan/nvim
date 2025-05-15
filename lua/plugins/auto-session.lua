return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		-- log_level = 'debug',
	},
	keys = {
		{
			"<leader>fs",
			"<cmd>SessionSearch<cr>",
			desc = "Search sessions",
		},
		{ "<leader>ss", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>sa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
	},
}

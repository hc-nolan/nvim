return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"rust",
			"lua",
			"python",
			"go",
			"javascript",
			"html",
			"css",
			"yaml",
			"scss",
			"comment",
			"cpp",
			"c",
			"csv",
			"diff",
			"dockerfile",
			"gomod",
			"gosum",
			"php",
			"toml",
			"vimdoc",
			"vim",
			"zig",
		},
		highlight = { enable = true },
	},
}

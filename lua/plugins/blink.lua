vim.pack.add({
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/saghen/blink.cmp" },
})

require("blink.cmp").setup({
	signature = { enabled = true },
	enabled = function()
		local disabled_filetypes = { "neo-tree-popup" }
		return not vim.tbl_contains(disabled_filetypes, vim.bo.filetype) and vim.b.completion ~= false
	end,
	keymap = { preset = "default" },
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = { documentation = { auto_show = false } },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

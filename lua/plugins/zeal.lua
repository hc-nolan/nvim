vim.pack.add({
	{ src = "https://github.com/paradoxical-dev/zeal.nvim" },
	-- { src = "https://github.com/hc-nolan/zeal.nvim" },
})
require("zeal").setup({
	docsets_path = vim.fn.expand("~/.local/share/Zeal/Zeal/docsets"), -- zeal docset locations
	browser = "w3m", -- can be any terminal browser
	split = "vsplit", -- used when use_toggleterm = false
	use_toggleterm = true,
	-- toggleterm specific options
	-- see https://github.com/akinsho/toggleterm.nvim/tree/main
	toggleterm = {
		direction = "vertical",
		split_size = vim.o.columns * 0.5, -- when direction != float
	},
	picker = {
		type = "snacks", -- default | snacks
		-- type = "default", -- default | snacks
		-- snacks picker specific options.
		-- see https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
		snacks = {
			layout = "default",
			manager_keymaps = {
				toggle = "T",
				select = " ",
				confirm = "<CR>",
			},
		},
	},
	ft_map = {
		lua = { "lua_5.5" },
		python = { "python_3" },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>zz", function()
	local zeal = require("zeal")
	local bufnr = vim.api.nvim_get_current_buf()
	local ft = vim.bo[bufnr].filetype
	local settings = zeal.config
	if settings.ft_map[ft] then
		zeal.search_ft()
	else
		zeal.search()
	end
end, { desc = "Zeal: Search" })

vim.keymap.set({ "n", "v" }, "<leader>zm", function()
	require("zeal").manager()
end, { desc = "Zeal: Open manager" })

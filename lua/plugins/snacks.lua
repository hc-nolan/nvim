vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
	{ src = "https://github.com/nvim-mini/mini.icons" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("snacks").setup({
	bigfile = { enabled = true },
	image = {},
	gh = {},
	dashboard = {
		width = 60,
		row = nil,
		col = nil,
		pane_gap = 4,
		autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
		preset = {
			pick = nil,
			keys = {
				{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
				{ icon = " ", key = "y", desc = "Open Yazi", action = ":Yazi" },
				{
					icon = " ",
					key = "r",
					desc = "Recent Files",
					action = ":lua Snacks.dashboard.pick('oldfiles')",
				},
				{ icon = " ", key = "s", desc = "Sessions", action = ":SessionSearch" },
				{
					icon = "󰒲 ",
					key = "L",
					desc = "Lazy",
					action = ":Lazy",
					enabled = package.loaded.lazy ~= nil,
				},
				{ icon = "󱁤 ", key = "M", desc = "Mason", action = ":Mason" },
				{
					icon = "󱀂 ",
					key = "N",
					desc = "Neovim News",
					action = function()
						Snacks.win({
							file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
							width = 0.6,
							height = 0.6,
							wo = {
								spell = false,
								wrap = false,
								signcolumn = "yes",
								statuscolumn = " ",
								conceallevel = 3,
							},
						})
					end,
				},
				{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
			},
			header = table.concat({
				[[   █  █   ]],
				[[   █ ██   ]],
				[[   ████   ]],
				[[   ██ ███   ]],
				[[   █  █   ]],
				[[             ]],
				[[ n e o v i m ]],
			}, "\n"),
		},
		formats = {
			icon = function(item)
				if item.file and item.icon == "file" or item.icon == "directory" then
					return M.icon(item.file, item.icon)
				end
				return { item.icon, width = 2, hl = "icon" }
			end,
			footer = { "%s", align = "center" },
			header = { "%s", align = "center" },
			file = function(item, ctx)
				local fname = vim.fn.fnamemodify(item.file, ":~")
				fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
				if #fname > ctx.width then
					local dir = vim.fn.fnamemodify(fname, ":h")
					local file = vim.fn.fnamemodify(fname, ":t")
					if dir and file then
						file = file:sub(-(ctx.width - #dir - 2))
						fname = dir .. "/…" .. file
					end
				end
				local dir, file = fname:match("^(.*)/(.+)$")
				return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
			end,
		},
		sections = {
			{ section = "header" },
			{ section = "keys", gap = 1, padding = 1 },
		},
	},
	explorer = {
		enabled = true,
		replace_netrw = true,
	},
	indent = { enabled = true },
	input = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 3000,
	},
	picker = {
		enabled = true,
		-- opencode.nvim config
		actions = {
			opencode_send = function(...)
				return require("opencode").snacks_picker_send(...)
			end,
			win = {
				input = {
					keys = {
						["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
					},
				},
			},
		},
		sources = {
			grep = {
				ignored = false,
				hidden = false,
			},
			gh_issue = {},
			gh_pr = {},
		},
	},
	quickfile = { enabled = true },
})

vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Snacks: find files" })
vim.keymap.set("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Snacks: grep" })
vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Snacks: grep buffers" })
vim.keymap.set("n", "\\", function()
	Snacks.picker.explorer()
end, { desc = "Snacks: Explorer" })
vim.keymap.set("n", "<leader>fh", function()
	Snacks.picker.help()
end, { desc = "Snacks: search help files" })

vim.keymap.set("n", "<leader>gd", function()
	Snacks.picker.git_diff()
end, { desc = "Snacks: git diff" })
vim.keymap.set("n", "<leader>gl", function()
	Snacks.picker.git_log()
end, { desc = "Snacks: git log" })
vim.keymap.set("n", "<leader>gf", function()
	Snacks.picker.git_files()
end, { desc = "Snacks: git files" })
vim.keymap.set("n", "<leader>gh", function()
	Snacks.picker.gitbrowse()
end, { desc = "Snacks: git browse" })
vim.keymap.set("n", "<leader>gi", function()
	Snacks.picker.gh_issue()
end, { desc = "Snacks: git issues" })
vim.keymap.set("n", "<leader>gp", function()
	Snacks.picker.gh_pr()
end, { desc = "Snacks: git PRs" })

vim.keymap.set("n", "<leader>fc", function()
	Snacks.picker.commands()
end, { desc = "Snacks: commands" })

vim.keymap.set("n", "<leader>lg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })

vim.keymap.set("n", "<leader>not", function()
	Snacks.picker.notifications()
end, { desc = "Notification History" })

vim.keymap.set("n", "<leader>fp", function()
	Snacks.picker.projects()
end, { desc = "Find projects" })

vim.keymap.set("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, { desc = "Search diagnostics" })

vim.keymap.set("n", "<leader>sD", function()
	Snacks.picker.diagnostics_buffer()
end, { desc = "Search buffer Diagnostics" })

vim.keymap.set("n", "<leader>sH", function()
	Snacks.picker.highlights()
end, { desc = "Search highlights" })

vim.keymap.set("n", "<leader>sj", function()
	Snacks.picker.jumps()
end, { desc = "Search jumps" })

vim.keymap.set("n", "<leader>sk", function()
	Snacks.picker.keymaps()
end, { desc = "Search keymaps" })

vim.keymap.set("n", "<leader>sq", function()
	Snacks.picker.qflist()
end, { desc = "Search quickfix List" })

vim.keymap.set("n", "<leader>uC", function()
	Snacks.picker.colorschemes()
end, { desc = "Search colorschemes" })

vim.keymap.set("n", "gd", function()
	Snacks.picker.lsp_definitions()
end, { desc = "Goto Definition" })

vim.keymap.set("n", "gD", function()
	Snacks.picker.lsp_declarations()
end, { desc = "Goto Declaration" })

vim.keymap.set("n", "gr", function()
	Snacks.picker.lsp_references()
end, { nowait = true, desc = "References" })

vim.keymap.set("n", "gI", function()
	Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })

vim.keymap.set("n", "gy", function()
	Snacks.picker.lsp_type_definitions()
end, { desc = "Goto T[y]pe Definition" })

vim.keymap.set("n", "<leader>zen", function()
	Snacks.zen()
end, { desc = "Toggle Zen Mode" })

vim.keymap.set("n", "<leader>Z", function()
	Snacks.zen.zoom()
end, { desc = "Toggle Zoom" })

vim.keymap.set({ "n", "t" }, "]]", function()
	Snacks.words.jump(vim.v.count1)
end, { desc = "Next Reference" })

vim.keymap.set({ "n", "t" }, "[[", function()
	Snacks.words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })

vim.keymap.set("n", "<leader>N", function()
	Snacks.win({
		file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
		width = 0.6,
		height = 0.6,
		wo = {
			spell = false,
			wrap = false,
			signcolumn = "yes",
			statuscolumn = " ",
			conceallevel = 3,
		},
	})
end, { desc = "Neovim News" })

-- Toggle mappings from init function
vim.api.nvim_create_autocmd("User", {
	callback = function()
		_G.dd = function(...)
			Snacks.debug.inspect(...)
		end
		_G.bt = function()
			Snacks.debug.backtrace()
		end
		vim.print = _G.dd

		Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
		Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
		Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
		Snacks.toggle.diagnostics():map("<leader>ud")
		Snacks.toggle.line_number():map("<leader>ul")
		Snacks.toggle
			.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
			:map("<leader>uc")
		Snacks.toggle.treesitter():map("<leader>uT")
		Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
		Snacks.toggle.inlay_hints():map("<leader>uh")
		Snacks.toggle.indent():map("<leader>ug")
		Snacks.toggle.dim():map("<leader>uD")
	end,
})

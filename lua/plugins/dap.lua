-- NOTE on text wrapping for nvim-dap-ui
-- not supported out of the box, requires manually editing a plugin file
-- `vim ~/.local/share/nvim/lazy/nvim-dap-ui/lua/dapui/windows/layout.lua`
-- change `wrap = false,` to `wrap = true,`
-- GH issue: https://github.com/rcarriga/nvim-dap-ui/issues/435
-- PR: https://github.com/rcarriga/nvim-dap-ui/pull/456

-- return {
-- 	"mfussenegger/nvim-dap",
-- 	dependencies = {
-- 		-- "rcarriga/nvim-dap-ui",
-- 		{
-- 			dir = "~/repos/nvim-dap-ui",
-- 			name = "nvim-dap-ui",
-- 		},
-- 		"nvim-neotest/nvim-nio",
-- 		"williamboman/mason.nvim",
-- 		"jay-babu/mason-nvim-dap.nvim",
-- 		"leoluz/nvim-dap-go",
-- 		"mfussenegger/nvim-dap-python",
-- 		"theHamsta/nvim-dap-virtual-text",
-- 	},
-- 	keys = {
-- 		-- Basic debugging keymaps, feel free to change to your liking!
-- 		{
-- 			"<leader>ds",
-- 			function()
-- 				require("dap").continue()
-- 			end,
-- 			desc = "[D]ebug: [s]tart",
-- 		},
-- 		{
-- 			"<leader>dx",
-- 			function()
-- 				require("dap").disconnect()
-- 			end,
-- 			desc = "[D]ebug: Disconnect",
-- 		},
-- 		{
-- 			"<leader>di",
-- 			function()
-- 				require("dap").step_into()
-- 			end,
-- 			desc = "[D]ebug: Step [i]nto",
-- 		},
-- 		{
-- 			"<leader>do",
-- 			function()
-- 				require("dap").step_over()
-- 			end,
-- 			desc = "[D]ebug: Step [o]ver",
-- 		},
-- 		{
-- 			"<leader>du",
-- 			function()
-- 				require("dap").step_out()
-- 			end,
-- 			desc = "[D]ebug: Step o[u]t",
-- 		},
-- 		{
-- 			"<leader>db",
-- 			function()
-- 				require("dap").toggle_breakpoint()
-- 			end,
-- 			desc = "Debug: Toggle [b]reak[p]oint",
-- 		},
--
-- 		-- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
-- 		{
-- 			"<leader>dt",
-- 			function()
-- 				require("dapui").toggle()
-- 			end,
-- 			desc = "[D]ebug: [t]oggle UI",
-- 		},
-- 	},
-- 	config = function()
-- 		local dap = require("dap")
-- 		local dapui = require("dapui")
--
-- 		require("mason-nvim-dap").setup({
-- 			-- Makes a best effort to setup the various debuggers with
-- 			-- reasonable debug configurations
-- 			automatic_installation = true,
--
-- 			-- You can provide additional configuration to the handlers,
-- 			-- see mason-nvim-dap README for more information
-- 			handlers = {},
--
-- 			-- You'll need to check that you have the required things installed
-- 			-- online, please don't ask me how to install them :)
-- 			ensure_installed = {
-- 				-- Update this to ensure that you have the debuggers for the langs you want
-- 				"delve",
-- 				"python",
-- 			},
-- 		})
--
-- 		-- Dap UI setup
-- 		-- For more information, see |:help nvim-dap-ui|
-- 		dapui.setup({
-- 			-- Set icons to characters that are more likely to work in every terminal.
-- 			--    Feel free to remove or use ones that you like more! :)
-- 			--    Don't feel like these are good choices.
-- 			wrap = true,
-- 			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
-- 			controls = {
-- 				icons = {
-- 					pause = "⏸",
-- 					play = "▶",
-- 					step_into = "⏎",
-- 					step_over = "⏭",
-- 					step_out = "⏮",
-- 					step_back = "b",
-- 					run_last = "▶▶",
-- 					terminate = "⏹",
-- 					disconnect = "⏏",
-- 				},
-- 			},
-- 			layouts = {
-- 				{
-- 					elements = {
-- 						{
-- 							id = "console",
-- 							size = 0.5,
-- 						},
-- 						{
-- 							id = "repl",
-- 							size = 0.40,
-- 						},
-- 						{
-- 							id = "breakpoints",
-- 							size = 0.20,
-- 						},
-- 						-- {
-- 						-- 	id = "watches",
-- 						-- 	size = 0.20,
-- 						-- },
-- 						-- {
-- 						-- 	id = "stacks",
-- 						-- 	size = 0.20,
-- 						-- },
-- 					},
-- 					position = "left",
-- 					size = 60,
-- 				},
-- 				{
-- 					elements = {
-- 						-- {
-- 						-- id = "console",
-- 						-- size = 0.5,
-- 						-- },
-- 						-- {
-- 						-- 	id = "repl",
-- 						-- 	size = 0.40,
-- 						-- },
-- 						{
-- 							id = "scopes",
-- 							size = 1,
-- 						},
-- 					},
-- 					position = "bottom",
-- 					size = 20,
-- 				},
-- 			},
-- 		})
-- 		dap.listeners.after.event_initialized["dapui_config"] = dapui.open
-- 		dap.listeners.before.event_terminated["dapui_config"] = dapui.close
-- 		dap.listeners.before.event_exited["dapui_config"] = dapui.close
--
-- 		dap.configurations.python = {
-- 			{
-- 				type = "python",
-- 				request = "launch",
-- 				name = "Launch file",
-- 				program = "${file}",
-- 				console = "integratedTerminal",
-- 				justMyCode = false,
-- 			},
-- 			{
-- 				type = "python",
-- 				request = "launch",
-- 				name = "Debug tests",
-- 				module = "pytest",
-- 				args = { "${file}" },
-- 				cwd = "${workspaceFolder}",
-- 				env = { PYTHONPATH = "${workspaceFolder}" },
-- 				console = "integratedTerminal",
-- 			},
-- 		}
--
-- 		require("nvim-dap-virtual-text").setup()
--
-- 		-- Install golang specific config
-- 		require("dap-go").setup({
-- 			delve = {
-- 				-- On Windows delve must be run attached or it crashes.
-- 				-- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
-- 				detached = vim.fn.has("win32") == 0,
-- 			},
-- 		})
--
-- 		-- require('dap-python').setup("/home/hayden/venv/debugpy/bin/python")
-- 		require("dap-python").setup("uv")
-- 	end,
-- }
--

return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"williamboman/mason.nvim",
			"jay-babu/mason-nvim-dap.nvim",
			"leoluz/nvim-dap-go",
			"mfussenegger/nvim-dap-python",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap = require("dap")
			require("mason-nvim-dap").setup({
				-- Makes a best effort to setup the various debuggers with
				-- reasonable debug configurations
				automatic_installation = true,

				-- You can provide additional configuration to the handlers,
				-- see mason-nvim-dap README for more information
				handlers = {},

				-- You'll need to check that you have the required things installed
				-- online, please don't ask me how to install them :)
				ensure_installed = {
					-- Update this to ensure that you have the debuggers for the langs you want
					"delve",
					"python",
					"gopls",
				},
			})

			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					console = "integratedTerminal",
					justMyCode = false,
				},
				{
					type = "python",
					request = "launch",
					name = "Debug tests",
					module = "pytest",
					args = { "${file}" },
					cwd = "${workspaceFolder}",
					env = { PYTHONPATH = "${workspaceFolder}" },
					console = "integratedTerminal",
				},
			}

			require("nvim-dap-virtual-text").setup()

			-- Install golang specific config
			require("dap-go").setup({
				delve = {
					-- On Windows delve must be run attached or it crashes.
					-- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
					detached = vim.fn.has("win32") == 0,
				},
			})

			-- require('dap-python').setup("/home/hayden/venv/debugpy/bin/python")
			require("dap-python").setup("uv")
		end,
	},
	{
		"miroshQa/debugmaster.nvim",
		config = function()
			local dm = require("debugmaster")
			-- make sure you don't have any other keymaps that starts with "<leader>d" to avoid delay
			vim.keymap.set({ "n", "v" }, "<leader>d", dm.mode.toggle, { nowait = true })
			vim.keymap.set("t", "<C-/>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
		end,
	},
}

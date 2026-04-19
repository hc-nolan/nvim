vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
})
vim.keymap.set({ "n", "v" }, "<leader>ma", "<cmd>Mason<cr>", { desc = "Mason: open" })
vim.keymap.set({ "n", "v" }, "<leader>mu", "<cmd>MasonUpdate<cr>", { desc = "Mason: update" })
vim.keymap.set({ "n", "v" }, "<leader>mi", "<cmd>MasonInstall<cr>", { desc = "Mason: install" })
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		-- lua
		"lua_ls",
		"stylua",
		-- python
		"pylsp",
		"ruff",
		-- web
		"svelte",
		"html",
		"cssls",
		"css_variables",
		"ts_ls",
		-- golang
		"gopls",
		-- docker
		"dockerls",
		"docker_compose_language_service",
		-- misc
		"ansiblels",
		"yamlls",
		"bashls",
		"markdown_oxide",
	},
})

vim.filetype.add({
	filename = {
		["docker-compose.yml"] = "yaml.docker-compose",
		["docker-compose.yaml"] = "yaml.docker-compose",
		["compose.yml"] = "yaml.docker-compose",
		["compose.yaml"] = "yaml.docker-compose",
	},
})

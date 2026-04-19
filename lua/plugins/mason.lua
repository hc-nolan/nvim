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
		"svelte",
		"lua_ls",
		"pylsp",
		"gopls",
		"html",
		"cssls",
		"css_variables",
		"ansiblels",
		"yamlls",
		"bashls",
		"dockerls",
		"docker_compose_language_service",
		"ts_ls",
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

require("config.lazy") -- lazy.nvim setup

-- Colorscheme --
-- Gruvbox-baby: https://github.com/luisiacc/gruvbox-baby
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "italic"
-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 1

vim.o.background = "dark"
-- Load the colorscheme
vim.cmd([[colorscheme gruvbox-baby]])

-- lsp --
vim.lsp.config("*", {
	capabilities = vim.lsp.protocol.make_client_capabilities(),
})
require("mason").setup() -- make sure mason is initialized
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
		"lua_ls",
		"ruff",
		"pylsp",
		"gopls",
		"jinja_lsp",
		"rust_analyzer",
		"zls",
		"html",
		"cssls",
		"css_variables",
		"ansiblels",
		"yamlls",
		"bashls",
		"dockerls",
		"docker_compose_language_service",
	},
})
vim.filetype.add({
	filename = {
		["docker-compose.yml"] = "yaml.docker-compose",
		["docker-compose.yaml"] = "yaml.docker-compose",
		["compose.yml"] = "yaml.docker-compose",
		["compose.yaml"] = "yaml.docker-compose",
	},
	-- extension = {
	--    note: jinja2 not currently working
	-- 		html = "jinja",
	-- 		jinja = "jinja",
	-- 		jinja2 = "jinja",
	-- 		j2 = "jinja",
	-- 	},
})
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- local lspconfig = require("lspconfig")
-- lspconfig.jinja_lsp.setup({ capabilities = capabilities })

-- end --

require("hnolan")

vim.o.winborder = "rounded"

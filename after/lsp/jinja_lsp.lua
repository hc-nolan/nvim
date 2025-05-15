return {
	settings = {
		cmd = { "jinja-lsp" },
		filetypes = { "html", "jinja" },
	},
	init_options = {
		templates = "./templates",
		backend = { "./src" },
		lang = "rust",
	},
}

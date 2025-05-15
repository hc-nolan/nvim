-- pylsp
return {
	settings = {
		pylsp = {
			plugins = {
				pyflakes = { enabled = false },
				pylint = { enabled = false },
				pycodestyle = {
					maxLineLength = 100,
				},
			},
		},
	},
}

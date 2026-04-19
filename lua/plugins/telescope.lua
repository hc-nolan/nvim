vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.comnvim-lua/plenary.nvim" },
})

require('telescope').setup()

local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files()
end, { desc = "Telescope: find files" })

vim.keymap.set("n", "<leader>fg", function()
  builtin.live_grep()
end, { desc = "Telescope: live grep" })

vim.keymap.set("n", "<leader>fb", function()
  builtin.buffers(themes.get_dropdown())
end, { desc = "Telescope: buffers" })

vim.keymap.set("n", "<leader>fh", function()
  builtin.help_tags(themes.get_ivy())
end, { desc = "Telescope: help files" })

vim.keymap.set("n", "<leader>fr", function()
  builtin.git_files(themes.get_ivy())
end, { desc = "Telescope: git (repo) files" })

vim.keymap.set("n", "<leader>fo", function()
  builtin.vim_options(themes.get_ivy())
end, { desc = "Telescope: nvim options" })

vim.keymap.set("n", "<leader>fC", function()
  builtin.commands(themes.get_ivy())
end, { desc = "Telescope: nvim commands" })

vim.keymap.set("n", "<leader>ld", function()
  builtin.lsp_definitions(themes.get_ivy())
end, { desc = "Telescope: LSP definitions" })

vim.keymap.set("n", "<leader>lr", function()
  builtin.lsp_references(themes.get_ivy())
end, { desc = "Telescope: LSP references" })

vim.keymap.set("n", "<leader>ls", function()
  builtin.lsp_symbols(themes.get_ivy())
end, { desc = "Telescope: LSP symbols" })

vim.keymap.set("n", "<leader>lu", function()
  builtin.lsp_incoming_calls(themes.get_ivy())
end, { desc = "Telescope: LSP incoming calls" })

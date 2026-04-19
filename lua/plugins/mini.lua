vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })
require("mini.pairs").setup()
require("mini.bufremove").setup()

vim.keymap.set({ "n", "v" }, "<leader>bd", function()
	require("mini.bufremove").delete()
end, { desc = "Mini: delete buffer" })

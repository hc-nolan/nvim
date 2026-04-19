vim.pack.add({ "https://github.com/danymat/neogen" })
require('neogen').setup()
vim.keymap.set({ "n", "v"}, "<leader>gen", "<cmd>Neogen<cr>", { desc = "Neogen: generate annotation" })

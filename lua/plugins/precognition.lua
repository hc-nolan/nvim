vim.pack.add({ { src = "https://github.com/tris203/precognition.nvim" } })
require("precognition").setup()
vim.keymap.set({ "n", "v" }, "<leader>P", ":Precognition toggle<CR>", { desc = "Precognition: toggle" })

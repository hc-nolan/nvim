vim.pack.add({ { src = "https://github.com/folke/which-key.nvim" } })
vim.keymap.set({ "n", "v" }, "<leader>?", function()
  require("which-key").show({ global = false })
end, { desc = "which-key: Show buffer-local keymaps" })

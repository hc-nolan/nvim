vim.pack.add({
  { src = "https://github.com/mikavilpas/yazi.nvim" },
  { src = "https://github.com/folke/snacks.nvim" },
})
vim.keymap.set({ "n", "v" }, "<leader>Y", "<cmd>Yazi toggle<cr>", { desc = "Yazi: Open" })

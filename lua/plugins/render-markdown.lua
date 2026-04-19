vim.pack.add({
  { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
})
vim.keymap.set({ "n", "v" }, "<leader>md", "<cmd>RenderMarkdown toggle<cr>", { desc = "Toggle markdown rendering" })


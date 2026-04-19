vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-file-browser.nvim" },
})
vim.keymap.set("n", "\\", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

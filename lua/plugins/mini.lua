vim.pack.add({ "https://github.com/mini-nvim/mini.nvim" })
require("mini.pairs").setup()
require("mini.bufremove").setup()

vim.keymap.set({ "n", "v" }, "<leader>bd", function()
  require('mini.bufremove').delete(0)
end, { desc = 'Mini: delete buffer' })

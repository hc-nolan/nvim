vim.pack.add({
  { src = "https://github.com/miroshQa/debugmaster.nvim" },
})

local dm = require("debugmaster")

vim.keymap.set({ "n", "v" }, "<leader>d", dm.mode.toggle, { nowait = true })
vim.keymap.set("t", "<C-/>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

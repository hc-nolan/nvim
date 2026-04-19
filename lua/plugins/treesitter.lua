vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})
require("nvim-treesitter").setup({
  ensure_installed = {
    "rust",
    "lua",
    "python",
    "go",
    "javascript",
    "html",
    "css",
    "yaml",
    "scss",
    "comment",
    "cpp",
    "c",
    "csv",
    "diff",
    "dockerfile",
    "gomod",
    "gosum",
    "php",
    "toml",
    "tsx",
    "typescript",
    "vimdoc",
    "vim",
    "zig",
  },
  highlight = { enable = true },
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,

})


return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.pairs").setup()
    -- require("mini.completion").setup()
    require("mini.bufremove").setup()
  end,
  keys = {
    {
      "<leader>bd",
      function()
        require("mini.bufremove").delete(0)
      end,
      desc = "Buffer: delete",
    },
  },
}

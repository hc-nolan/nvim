return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      extensions = {
        file_browser = {
          theme = "ivy",
        }
      }
    }
    require("telescope").load_extension "file_browser"
  end,
  keys = {
    {
      "\\",
      "<cmd>Telescope file_browser<cr>",
      mode = { "n", "v" },
      desc = "Telescope: toggle file browser",
    },
    {
      "|",
      "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
      mode = { "n", "v" },
      desc = "Telescope > file_browser: reveal current file",
    },
  },

}

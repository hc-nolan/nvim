return {
  {
    -- "emmanueltouzery/apidocs.nvim",
    "chunned/apidocs.nvim",
    -- dir = "~/repos/apidocs.nvim",
    -- name = "apidocs.nvim",
    -- branch = "startup-install",
    lazy = false,
    dependencies = {
      "folke/snacks.nvim",
    },
    cmd = {
      "ApidocsSearch",
      "ApidocsInstall",
      "ApidocsOpen",
      "ApidocsSelect",
      "ApidocsUninstall",
    },
    config = function()
      local opts = {
        picker = "telescope",
        -- picker = "snacks",
      }
      local langs = { "python~3.13", "lua~5.4", "rust", "ansible", "go", "zig", "javascript", "html" }
      require("apidocs").setup(opts)
      require("apidocs").ensure_install(langs)
    end,
    keys = {
      { "<leader>api", "<cmd>ApidocsOpen<cr>", desc = "Apidocs: Search" },
      {
        "<leader>aps",
        function()
          local lang = vim.bo.filetype
          require("apidocs").apidocs_search({ restrict_sources = { lang } })
        end,
        desc = "Apidocs: Search, restricted to current file language",
      },
    },
  },
}

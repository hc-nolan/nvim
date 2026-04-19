vim.pack.add({
  { src = "https://github.com/mfussenegger/nvim-dap" },
  { src = "https://github.com/nvim-neotest/nvim-nio" },
  { src = "https://github.com/williamboman/mason.nvim" },
  { src = "https://github.com/jay-babu/mason-nvim-dap.nvim" },
  { src = "https://github.com/leoluz/nvim-dap-go" },
  { src = "https://github.com/mfussenegger/nvim-dap-python" },
  { src = "https://github.com/theHamsta/nvim-dap-virtual-text" },
})


local dap = require("dap")

require("mason-nvim-dap").setup({
  automatic_installation = true,
  handlers = {},
  ensure_installed = {
    "delve",
    "python",
  },
})

dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    console = "integratedTerminal",
    justMyCode = false,
  },
  {
    type = "python",
    request = "launch",
    name = "Debug tests",
    module = "pytest",
    args = { "-s", "${file}" },
    cwd = "${workspaceFolder}",
    env = { PYTHONPATH = "${workspaceFolder}" },
    console = "integratedTerminal",
  },
  {
    type = "python",
    request = "launch",
    name = "Debug specific test",
    module = "pytest",
    args = function()
      local test_name = vim.fn.input("Test name: ")
      return { "-s", "${file}::" .. test_name }
    end,
    cwd = "${workspaceFolder}",
    env = { PYTHONPATH = "${workspaceFolder}" },
    console = "integratedTerminal",
  },
}

require("nvim-dap-virtual-text").setup()

require("dap-go").setup({
  delve = {
    detached = vim.fn.has("win32") == 0,
  },
})

require("dap-python").setup("uv")

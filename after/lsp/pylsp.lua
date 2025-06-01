-- https://jdhao.github.io/2023/07/22/neovim-pylsp-setup/
local venv_path = os.getenv('VIRTUAL_ENV')
local py_path = nil
-- decide which python executable to use for mypy
if venv_path ~= nil then
  py_path = venv_path .. "/bin/python3"
else
  py_path = vim.g.python3_host_prog
end

-- pylsp
return {
  settings = {
    pylsp = {
      plugins = {
        pyls_isort = { enabled = true },
        pylsp_mypy = {
          enabled = true,
          overrides = { "--python-executable", py_path, true },
          report_progress = true,
          live_mode = false,
        },
        pyflakes = { enabled = false },
        pylint = { enabled = false },
        pycodestyle = {
          maxLineLength = 100,
        },
      },
    },
  },
}

require("hnolan")

-- load everything in /lua/plugins/ and /lua/lsp
local plugin_dirs = {
  "plugins",
  "lsp",
}

for _, dir in ipairs(plugin_dirs) do
  local full_path = vim.fn.stdpath("config") .. "/lua/" .. dir

  for _, file in ipairs(vim.fn.glob(full_path .. "/*.lua", false, true)) do
    if not file:match("init%.lua$") then
      local module = file:match(".+/lua/(.+)%.lua$"):gsub("/", ".")
      require(module)
    end
  end
end
-- end



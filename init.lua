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


-- unsure if this is still needed in v0.12
-- vim.lsp.config("*", {
-- 	capabilities = vim.lsp.protocol.make_client_capabilities(),
-- })
vim.lsp.enable({
  'svelte',
  'lua_ls',
  'pylsp',
  'gopls',
  'html',
  'cssls',
  'css_variables',
  'ansiblels',
  'yamlls',
  'bashls',
  'dockerls',
  'docker_compose_language_service',
  'ts_ls',
})
vim.diagnostic.config({ virtual_text = true })

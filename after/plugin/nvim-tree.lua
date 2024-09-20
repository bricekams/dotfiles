local function custom_on_attach(bufnr)
  local api = require("nvim-tree.api")
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set("n", "<leader>f", api.tree.focus)
  vim.keymap.set("n", "<leader>e", api.tree.open)
  vim.keymap.set("n", "<leader>t", api.tree.toggle)
end

require("nvim-tree").setup({
  on_attach = custom_on_attach,
})

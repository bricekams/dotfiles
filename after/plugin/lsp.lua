local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- The lines below got commented because if configured it will be the default over fluttertools
-- require('lspconfig').dartls.setup({
--  cmd = {"dart", "language-server", "--protocol=lsp"}
-- })

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'pyright',

  },
    handlers = {
      lsp_zero.default_setup,
    },
})

local lsp_zero = require('lsp-zero')

-- cmp

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  })
})

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

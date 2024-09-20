local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-space>'] = cmp.mapping.complete(),
  })
})

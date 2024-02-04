return {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
              require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
      },
      window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<Tab>'] = cmp.mapping(function(fallback)
              if cmp.visible() then
                  cmp.select_next_item()
              else
                  fallback()
              end
          end, { 'i', 's' }),
      }),
      sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
      })
    })
  end,
}

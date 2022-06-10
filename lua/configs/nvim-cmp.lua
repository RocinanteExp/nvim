local cmp = require 'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = cmp.mapping.preset.insert ({
    -- ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-c>'] = cmp.mapping.complete(),
    ['<Esc>'] = cmp.mapping.close(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm {
      -- behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      -- elseif luasnip.expand_or_jumpable() then
      --  luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      -- elseif luasnip.jumpable(-1) then
      --  luasnip.jump(-1)
      else
        fallback()
      end
    end,
  }),
  sources = {
    { name = 'nvim_lsp' }, -- For nvim-lsp
    { name = 'ultisnips' }, -- For ultisnips user.
    -- { name = 'nvim_lua' }, -- for nvim lua function
    { name = 'path' }, -- for path completion
    { name = 'buffer', keyword_length = 4 }, -- for buffer word completion
    { name = 'omni' },
    { name = 'emoji', insert = true, } -- emoji completion
  },
  completion = {
    keyword_length = 1,
    completeopt = "menu,noselect"
  },
  view = {
    entries = 'custom',
  },
})

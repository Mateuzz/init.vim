" fzf-lsp
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gv <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>fo <cmd>lua vim.lsp.buf.format()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca <cmd>CodeActions<CR>
nnoremap <leader>re <cmd>References<CR>
nnoremap <leader>ds <cmd>DocumentSymbols<CR>
nnoremap <leader>di <cmd>Diagnostics<CR>
nnoremap <leader>da <cmd>DiagnosticsAll<CR>
nnoremap <leader>ws :WorkspaceSymbols 

lua << EOF

for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

-- local augroup = vim.api.nvim_create_augroup('user_diagnostic', {clear = true})
-- local autocmd = vim.api.nvim_create_autocmd

-- autocmd('ModeChanged', {
--   group = augroup,
--   pattern = {'n:i', 'n:v', 'i:v'},
--   command = 'lua vim.diagnostic.disable(0)'
-- })

-- autocmd('ModeChanged', {
--   group = augroup,
--   pattern = 'i:n',
--   command = 'lua vim.diagnostic.enable(0)'
-- })

require("luasnip.loaders.from_snipmate").lazy_load{
    paths = "~/.local/share/nvim/plugged/vim-snippets/snippets/"
}

require("mason").setup()

require "lsp_signature".setup({
    bind = true,
    hint_enable = false,
    always_trigger = true,
    handle_opts = {
        border = "rounded"
    }
})

require('goto-preview').setup {
    default_mappings = true
}


local cmp = require'cmp'
local lspkind = require('lspkind')

  cmp.setup({
     formatting = {
        format = lspkind.cmp_format({
          -- mode = 'symbol', -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
        })
     },

    performance = {
        debounce = 50,
        throttle = 50
     },

    window = {
       -- completion = cmp.config.window.bordered(),
       -- documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    snippet = {
      expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
       { name = 'luasnip' }, -- For luasnip users.
       -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local lspconfig = require("lspconfig")

  capabilities.semanticTokensProvider = nil

  lspconfig['tsserver'].setup {
    capabilities = capabilities,
  }
  lspconfig['intelephense'].setup {
    capabilities = capabilities
  }
  lspconfig['html'].setup {
    capabilities = capabilities
  }
  lspconfig['cssls'].setup {
    capabilities = capabilities
  }
  lspconfig['eslint'].setup {
    capabilities = capabilities
  }
  lspconfig['clangd'].setup {
    capabilities = capabilities
  }

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = false,
      signs = true,
      update_in_insert = false,
      underline = true,
    }
  )




EOF

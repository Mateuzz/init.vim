" fzf-lsp
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gv <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>fo <cmd>lua vim.lsp.buf.format()<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <space>a <cmd>CodeActions<CR>
nnoremap <space>e <cmd>References<CR>
nnoremap <space>s <cmd>DocumentSymbols<CR>
nnoremap <space>d <cmd>Diagnostics<CR>
nnoremap <space>f <cmd>DiagnosticsAll<CR>
nnoremap <space>w :WorkspaceSymbols 

snoremap <silent> <c-j> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <c-k> <cmd>lua require('luasnip').jump(-1)<Cr>


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
local autopairs = require('nvim-autopairs')

-- require('html-css'):setup{
    -- file_extensions = { "css", "sass", "scss", "less" },
    -- enable_on = { "html", "vue", "blade" }
-- }

-- cmp.event:on(
    --'confirm_done',
    -- require('nvim-autopairs.completion.cmp').cmp.on_confirm_done()
 -- )

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
        ['<c-j>'] = function() 
                        require('luasnip').jump(1)
                    end,

        ['<c-k>'] = function() 
                        require('luasnip').jump(-1)
                    end,
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
        -- { name = 'html-css' }, 
        { name = 'luasnip' }, -- For luasnip users.
        { name = 'path' }, 
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

cmp.setup.cmdline({ ':' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        {  name = 'cmdline' }
    }, {
        { name = 'path' }
    })
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")

capabilities.textDocument.completion.completionItem.snippetSupport = true
-- capabilities.semanticTokensProvider = nil

lspconfig.jsonls.setup {
    capabilities = capabilities,
    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
        },
    },
}

lspconfig.tsserver.setup{
    capabilities = capabilities,

    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = "/usr/lib/node_modules/@vue/typescript-plugin",
                languages = {"javascript", "typescript", "vue"}
            }
        }
    },

    filetypes = {
        "javascript",
        "typescript",
        "vue",
        "typescriptreact"
    }
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

lspconfig.volar.setup {
    capabilities = capabilities,
}

lspconfig.lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
          return
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
                library = {
              vim.env.VIMRUNTIME
              -- Depending on the usage, you might want to add additional paths here.
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        })
      end,
      settings = {
        Lua = {}
      }
}

vim.keymap.set('n', '<space>m', vim.diagnostic.open_float)

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

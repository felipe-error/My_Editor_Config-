return {
  { 'hrsh7th/nvim-cmp',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'onsails/lspkind.nvim',
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lua',
      {'L3MON4D3/LuaSnip',
       build = 'make install_jsregexp',
       version = 'v2.*',
      },
    },

    config = function()

      local cmp = require('cmp')
      local luasnip = require('luasnip')
      local lspkind = require('lspkind')

      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup({
	sources = {
	  { name = 'nvim_lsp' },
	  { name = 'buffer' },
          { name = 'luasnip'},
	  { name = 'path' },
	  { name = 'nvim_lua' },
        },
	mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
	window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered(),
	},
	formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
         })
        },
	snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        }
    })
    end

  }
}

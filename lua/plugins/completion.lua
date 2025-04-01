return {
  { 'hrsh7th/nvim-cmp',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    },

    config = function()

      local cmp = require('cmp')
      cmp.setup({
	sources = {
	  { name = 'nvim_lsp' },
	  { name = 'buffer' },
	  { name = 'path' }
        },
	mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
	window = {
	  completion = cmp.config.window.bordered(),
	  documentation = cmp.config.window.bordered(),
	}
    })
    end

  }
}

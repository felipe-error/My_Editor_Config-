return {
  {'williamboman/mason.nvim',
      dependencies = {
        'williamboman/mason-lspconfig',
        'neovim/nvim-lspconfig',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
	{ 'j-hui/fidget.nvim', opts = {} },
	 'b0o/schemastore.nvim',
      },
      config = function()
         require('mason').setup({
	    ui = {
		icons = {
		    package_installed = '✓',
		    package_pending = '➜',
		    package_uninstalled = '✗'
		},
		border = 'double'
	    }
	  })

	 require('mason-lspconfig').setup {
	    ensure_installed = {
	    'lua_ls',
	    'clangd',
	    'biome',
	    'html',
	    'cmake',
	    },
	    autocomplete = true
	  }
	require('mason-tool-installer').setup({
          ensure_installed = {},
	  auto_update = true,
	  run_on_start = true
})
	local lspconfig = require('lspconfig')
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	local on_attach = function(client, buff)
	  local bufopts = { noremap = true, silent = true, buffer = buff}
	  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
 	  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	end
	local servers = {
          lua_ls = {
            capabilities = capabilities,
	    settings = {
	      Lua = {
		workspace = {
		  library = {
		    vim.env.VIMRUNTIME,
                    vim.fn.stdpath('config') .. '\\xmake_api.lua'
		  },
                  globals = { 'vim' },
		},
		completion = {
		  callSnippet = 'Replace'
		}
	      }
	    }
	  },
	  clangd = {
            capabilities = capabilities
	  },
	  biome = {
            capabilities = capabilities
	  },
	  html = {
            capabilities = capabilities
	  },
	  cmake = {
            capabilities = capabilities
	  },
	}


	for server, config in pairs(servers) do
	  lspconfig[server].setup(vim.tbl_extend('force', {
	  capabilities = capabilities,
	  on_attach = on_attach
          }, config))
	end
       end
  }
}



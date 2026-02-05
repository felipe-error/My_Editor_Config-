return {
  {'williamboman/mason.nvim',
      dependencies = {
        'williamboman/mason-lspconfig',
        'neovim/nvim-lspconfig',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
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
          }})

          require('mason-lspconfig').setup {
            ensure_installed = {
              'lua_ls',
              'clangd',
              'biome',
              'html',
              'cmake',
              'glsl_analyzer',
              'zls',
	    },
      autocomplete = true
    }

    require('mason-tool-installer').setup({
      ensure_installed = {},
      auto_update = true,
      run_on_start = true})

      vim.lsp.config['lua_ls'] = {
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
             },
	   }
       }
       vim.lsp.config['asm'] = {
	--[[settings = {
	  assembler = "go",
          instruction_set = "x86/x86-64",
        }]]--
       }
       vim.lsp.enable('lua_ls')
       vim.lsp.enable('clangd')
       vim.lsp.enable('biome')
       vim.lsp.enable('html')
       vim.lsp.enable('cmake')
       vim.lsp.enable('glsl_analyzer')
       vim.lsp.enable('zls')
       vim.lsp.enable('asm_lsp')
       end
  }
}



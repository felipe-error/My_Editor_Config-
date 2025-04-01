return {
   { { 'Rigellute/shades-of-purple.vim'},
     { 'folke/tokyonight.nvim' },
     { 'sainnhe/sonokai',
       config = function()
	 vim.g.sonokai_enable_italic = true
	 vim.g.sonokai_style = 'espresso'
       end
     },
     { 'scottmckendry/cyberdream.nvim',
       config = function()
	 require('cyberdream').setup({
	   transparent = true,
           italic_comments = false,

	   colors = {
	     bg_highlight = '#cfcfcf'
	   }
	 })
       end
     }
   }
}

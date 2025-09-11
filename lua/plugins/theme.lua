return {
     { 'scottmckendry/cyberdream.nvim',
       lazy = false,
       branch = 'main',
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


-- Editor Configs

-- Editor Style 
vim.o.termguicolors = true
vim.cmd('syntax enable')
vim.cmd('colorscheme cyberdream')

vim.o.number = true
vim.o.relativenumber = true
vim.o.hidden = true
vim.opt.fillchars:append({ eob = ' ' })

-- A set of options for better completion experience. See `:h completeopt`
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
-- Hides the ins-completion-menu messages. See `:h shm-c`
vim.opt.shortmess:append 'c'
vim.cmd('set encoding=utf8')


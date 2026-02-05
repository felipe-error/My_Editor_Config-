local builtin = require('telescope.builtin')
local notify = require('telescope').extensions.notify
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>s', notify.notify, { desc = 'Telescope notify'})
vim.keymap.set('n', 'z', function() require('origami').h() end)
vim.keymap.set('n', 'x', function() require('origami').l() end)
vim.keymap.set('n', '<leader>l', function() require('origami').dollar() end)
vim.keymap.set('n', '<leader>l', function() require('origami').caret() end)




-- grug-far: project-wide search and replace
-- https://github.com/MagicDuck/grug-far.nvim

vim.pack.add { 'https://github.com/MagicDuck/grug-far.nvim' }

require('grug-far').setup {}

vim.keymap.set('n', '<leader>rr', function() require('grug-far').open() end, { desc = '[R]eplace in project' })
vim.keymap.set('n', '<leader>rw', function() require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } } end, { desc = '[R]eplace current [W]ord' })
vim.keymap.set('n', '<leader>rf', function() require('grug-far').open { prefills = { paths = vim.fn.expand '%' } } end, { desc = '[R]eplace in current [F]ile' })
vim.keymap.set('v', '<leader>rv', function() require('grug-far').with_visual_selection() end, { desc = '[R]eplace [V]isual selection' })

-- vim: ts=2 sts=2 sw=2 et

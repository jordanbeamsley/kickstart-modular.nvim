-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '<leader>nf', '<Cmd>Neotree focus<CR>', { desc = '[N]eo-tree [F]ocus', silent = true })
vim.keymap.set('n', '<leader>nc', '<Cmd>Neotree close<CR>', { desc = '[N]eo-tree [C]lose', silent = true })
vim.keymap.set('n', '<leader>nt', '<Cmd>Neotree toggle<CR>', { desc = '[N]eo-tree [T]oggle', silent = true })
vim.keymap.set('n', '<leader>ng', '<Cmd>Neotree git_status<CR>', { desc = '[N]eo-tree [G]it status', silent = true })
vim.keymap.set('n', '<leader>nb', '<Cmd>Neotree buffers<CR>', { desc = '[N]eo-tree [B]uffers', silent = true })
vim.keymap.set('n', '<leader>no', '<Cmd>Neotree reveal<CR>', { desc = '[N]eo-tree [O]pen & reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    follow_current_file = { enabled = true },
    window = {
      mappings = {
        ['<leader>nc'] = 'close_window',
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et

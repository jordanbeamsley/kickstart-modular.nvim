-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

<<<<<<< HEAD
---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>no', ':Neotree reveal<CR>', desc = '[N]eo-tree [O]pen & reveal', silent = true },
    { '<leader>nf', ':Neotree focus<CR>', desc = '[N]eo-tree [F]ocus', silent = true },
    { '<leader>nc', ':Neotree close<CR>', desc = '[N]eo-tree [C]lose', silent = true },
    { '<leader>ng', ':Neotree git_status<CR>', desc = '[N]eo-tree [G]it status', silent = true },
    { '<leader>nb', ':Neotree buffers<CR>', desc = '[N]eo-tree [B]uffers', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      -- Automatically navigate to the current file's location in the tree
      follow_current_file = { enabled = true },
=======
vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
>>>>>>> upstream/master
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et

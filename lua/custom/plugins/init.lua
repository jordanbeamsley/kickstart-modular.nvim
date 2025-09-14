-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle left<cr>', desc = 'Explorer (neo-tree)' },
    { '<leader>o', '<cmd>Neotree reveal<cr>', desc = 'Reveal current file' },
    -- new keybinding for focusing Neo-tree
    {
      '<leader>nf',
      function()
        require('neo-tree.command').execute { action = 'focus', source = 'filesystem', position = 'left' }
      end,
      desc = 'Focus Neo-tree panel',
    },
    {
      '<leader>nb',
      function()
        vim.cmd 'wincmd p' -- jump back to previous window
      end,
      desc = 'Back to previous window from Neo-tree',
    },
  },
  opts = {
    -- your existing options...
  },
}

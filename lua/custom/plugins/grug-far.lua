-- grug-far: project-wide search and replace
-- https://github.com/MagicDuck/grug-far.nvim

---@module 'lazy'
---@type LazySpec
return {
  'MagicDuck/grug-far.nvim',
  cmd = 'GrugFar',
  keys = {
    {
      '<leader>rr',
      function() require('grug-far').open() end,
      desc = '[R]eplace in project',
    },
    {
      '<leader>rw',
      function() require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } } end,
      desc = '[R]eplace current [W]ord',
    },
    {
      '<leader>rf',
      function() require('grug-far').open { prefills = { paths = vim.fn.expand '%' } } end,
      desc = '[R]eplace in current [F]ile',
    },
    {
      '<leader>rv',
      function() require('grug-far').with_visual_selection() end,
      mode = 'v',
      desc = '[R]eplace [V]isual selection',
    },
  },
  opts = {},
}

-- vim: ts=2 sts=2 sw=2 et

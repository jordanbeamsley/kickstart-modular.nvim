---@module 'lazy'
---@type LazySpec
return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function() require('conform').format { async = true } end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    ---@module 'conform'
    ---@type conform.setupOpts
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Filetypes to autoformat on save. Add/remove entries as needed.
        local format_filetypes = {
          c = true,
          cpp = true,
          typescript = true,
          javascript = true,
          typescriptreact = true,
          javascriptreact = true,
          python = true,
          lua = true,
        }
        if format_filetypes[vim.bo[bufnr].filetype] then
          return { timeout_ms = 500 }
        end
      end,
      default_format_opts = {
        -- Use external formatters configured below. Fall back to LSP formatting
        -- only when no formatter is configured for the filetype.
        lsp_format = 'fallback',
      },
      -- All formatter configuration lives here — one place for all languages.
      -- Tools are installed via Mason; see the extra_tools list in lspconfig.lua.
      formatters_by_ft = {
        c = { 'clang-format' },
        cpp = { 'clang-format' },
        typescript = { 'prettierd', 'prettier', stop_after_first = true },
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        python = { 'ruff_format' },
        lua = { 'stylua' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et

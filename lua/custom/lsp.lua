-- Your LSP server selections and extra Mason tools.
--
-- Kept separate from kickstart/plugins/lspconfig.lua so upstream changes to
-- that file don't collide with edits here — add/remove entries freely.

return {
  -- Merged into kickstart's `servers` table in lspconfig.lua.
  -- Feel free to add/remove any LSPs that you want here. They will
  -- automatically be installed. See `:help lsp-config`.
  ---@type table<string, vim.lsp.Config>
  servers = {
    clangd = {},
    ts_ls = {},
    pyright = {},
    tailwindcss = {},
  },

  -- Non-LSP tools for Mason to install (formatters, linters, etc.)
  -- Formatter configuration lives in conform.lua — add entries here to keep them installed.
  extra_tools = {
    'clang-format', -- C/C++
    'prettierd', -- TypeScript / JavaScript
    'ruff', -- Python
    'stylua', -- Lua
  },
}

-- vim: ts=2 sts=2 sw=2 et

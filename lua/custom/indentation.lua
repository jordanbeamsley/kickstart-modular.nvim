-- Per-language indentation settings.
--
-- These apply via FileType autocmds and serve as baseline defaults.
-- Two things can still override them for a specific buffer:
--   - guess-indent.nvim  (detects indentation from the file's existing content)
--   - .editorconfig files in the project root (Neovim 0.9+ reads these automatically)
-- Use `:set tabstop=4 shiftwidth=4 softtabstop=4` to manually reset a buffer,
-- or disable either mechanism if you want strict control:
--   guess-indent:  remove `{ 'NMAC427/guess-indent.nvim', opts = {} }` from lazy-plugins.lua
--   editorconfig:  set `vim.g.editorconfig = false` in options.lua

local group = vim.api.nvim_create_augroup('custom-indentation', { clear = true })

---@param pattern string|string[]
---@param tabstop integer
---@param shiftwidth integer
---@param expandtab boolean
local function set_indent(pattern, tabstop, shiftwidth, expandtab)
  vim.api.nvim_create_autocmd('FileType', {
    group = group,
    pattern = pattern,
    callback = function()
      vim.opt_local.tabstop = tabstop
      vim.opt_local.shiftwidth = shiftwidth
      vim.opt_local.softtabstop = shiftwidth
      vim.opt_local.expandtab = expandtab
    end,
  })
end

-- All languages default to 4 spaces (matching the global default in options.lua).
-- Adjust individual entries as needed — shiftwidth drives auto-indent and >> / <<.

set_indent({ 'c', 'cpp' },                                                  4, 4, true)
set_indent({ 'python' },                                                     4, 4, true)
set_indent({ 'typescript', 'typescriptreact', 'javascript', 'javascriptreact',
             'json', 'jsonc', 'html', 'css' },                              4, 4, true)
set_indent({ 'lua' },                                                        4, 4, true)
set_indent({ 'sh', 'bash', 'zsh' },                                         4, 4, true)
set_indent({ 'yaml' },                                                       2, 2, true) -- YAML spec discourages tabs; 2 spaces is universal convention
set_indent({ 'make' },                                                       4, 4, false) -- Makefiles require real tabs

-- vim: ts=4 sts=4 sw=4 et

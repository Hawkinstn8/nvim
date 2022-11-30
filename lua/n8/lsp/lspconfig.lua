local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then 
  return
end


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer


-- local border = {
--   {"🭽", "FloatBorder"},
--   {"▔", "FloatBorder"},
--   {"🭾", "FloatBorder"},
--   {"▕", "FloatBorder"},
--   {"🭿", "FloatBorder"},
--   {"▁", "FloatBorder"},
--   {"🭼", "FloatBorder"},
--   {"▏", "FloatBorder"},
-- }

-- -- Make Hover have border
-- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
-- function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
--   opts = opts or {}
--   opts.border = opts.border or border
--   return orig_util_open_floating_preview(contents, syntax, opts, ...)
-- end

local on_attach = require('n8.keymaps').on_attach


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
lspconfig['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
    
}
lspconfig['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
lspconfig['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    },
    capabilities = capabilities
}
lspconfig['sumneko_lua'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
lspconfig['eslint'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

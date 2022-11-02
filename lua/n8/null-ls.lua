local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

null_ls.setup({
    on_attach = function(client, bufnr)
      if client.server_capabilities.documentFormattingProvider then
        vim.cmd("nnoremap <silent><buffer> <Leader>pr :lua vim.lsp.buf.format { async = true, name = 'null-ls' }<CR>")
  
        -- format on save
        vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format { async = true, name = 'null-ls' }")
      end
  
      if client.server_capabilities.documentRangeFormattingProvider then
        vim.cmd("xnoremap <silent><buffer> <Leader>pr :lua vim.lsp.buf.range_formatting({})<CR>")
      end
    end,
  })


  local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
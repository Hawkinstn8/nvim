local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("n8.lsp.lsp-installer")
require("n8.lsp.handlers").setup()
require("n8.lsp.null-ls")

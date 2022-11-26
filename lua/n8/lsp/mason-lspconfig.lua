local status_ok, masonlspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  return
end

masonlspconfig.setup()

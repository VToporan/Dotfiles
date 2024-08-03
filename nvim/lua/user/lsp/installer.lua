local status_ok, mason = pcall(require, "mason")
if not status_ok then
    vim.notify("mason not found!")
	return
end

local status_ok, config = pcall(require, "mason-lspconfig")
if not status_ok then
    vim.notify("mason-lspconfig not found!")
	return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("lspconfig not found!")
	return
end


mason.setup()
config.setup()

lspconfig.clangd.setup{
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
}

lspconfig.cmake.setup{
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
}

lspconfig.pyright.setup{
    on_attach = require("user.lsp.handlers").on_attach,
    capabilities = require("user.lsp.handlers").capabilities,
}

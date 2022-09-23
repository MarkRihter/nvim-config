local status, lspconfig =  pcall(require, 'lspconfig')
if (not status) then return end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'df', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'dk', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', 'dj', vim.diagnostic.goto_next, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'de', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'dh', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'di', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', 'dn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'da', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'dr', vim.lsp.buf.references, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- Typescripts
lspconfig.tsserver.setup{
	on_attach = on_attach,
    flags = lsp_flags,
}

-- CSS
lspconfig.cssls.setup{
	capabilities = capabilities,
	on_attach = on_attach,
    flags = lsp_flags,
}
lspconfig.cssmodules_ls.setup{
	on_attach = on_attach,
    flags = lsp_flags,
}

-- HTML
lspconfig.html.setup {
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
}

-- Vue 3
lspconfig.volar.setup{
	on_attach = on_attach,
    flags = lsp_flags,
}

-- Rust
lspconfig.rust_analyzer.setup{
	on_attach = on_attach,
    flags = lsp_flags,
}

-- Python
lspconfig.pylsp.setup{
	on_attach = on_attach,
    flags = lsp_flags,
}

lspconfig.sumneko_lua.setup{
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}

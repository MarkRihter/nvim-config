local utils = require("markrikhter.utilities")
local status, lspconfig = pcall(require, "lspconfig")
if not status then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
utils.map("n", "<Leader>df", vim.diagnostic.open_float)
utils.map("n", "<Leader>dk", vim.diagnostic.goto_prev)
utils.map("n", "<Leader>dj", vim.diagnostic.goto_next)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Formatting disabled for all lsp servers. Only null-ls will format files
	client.server_capabilities.documentFormattingProvider = false

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	utils.map("n", "<Leader>de", vim.lsp.buf.definition)
	utils.map("n", "<Leader>dh", vim.lsp.buf.hover)
	utils.map("n", "<Leader>di", vim.lsp.buf.implementation)
	utils.map("n", "<Leader>drn", vim.lsp.buf.rename)
	utils.map("n", "<Leader>da", vim.lsp.buf.code_action)
	utils.map("n", "<Leader>drf", vim.lsp.buf.references)
end

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

-- Typescripts
lspconfig.tsserver.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

-- CSS
lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
})
lspconfig.cssmodules_ls.setup({
	flags = lsp_flags,
	on_attach = on_attach,
})

-- HTML
lspconfig.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	flags = lsp_flags,
})

-- Vue 3
lspconfig.volar.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

-- Rust
lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

-- Python
lspconfig.pylsp.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.sumneko_lua.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

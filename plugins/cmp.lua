local lspkind = require('lspkind')

local cmp = require('cmp')

cmp.setup {
	window = {
    completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
  },
	mapping = cmp.mapping.preset.insert({
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
		-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		-- ['<C-Space>'] = cmp.mapping.complete(),
		-- ['<C-e>'] = cmp.mapping.abort(),
		-- ['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = {
		{name = 'nvim_lsp', max_item_count = 10 },
		{name = 'buffer', max_item_count = 10 },
		{name = 'path', max_item_count = 10 },
	},
	formatting = {
		format = lspkind.cmp_format{}
	}
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

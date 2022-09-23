require("symbols-outline").setup({
	highlight_hovered_item = false,
	auto_unfold_hover = false,
	autofold_depth = 2,
	keymaps = {
		fold_all = 'H',
		unfold_all = 'L',
	},
})

vim.keymap.set('n', '<F2>', '<CMD>:SymbolsOutline<CR>', {silent = true, noremap = true })

local utils = require("markrikhter.utilities")

require("symbols-outline").setup({
	highlight_hovered_item = false,
	auto_unfold_hover = false,
	autofold_depth = 1,
	keymaps = {
		fold_all = "H",
		unfold_all = "L",
	},
})

utils.map("n", "<F2>", "<CMD>:SymbolsOutline<CR>")

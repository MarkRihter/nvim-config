local utils = require("markrikhter.utilities")
local toggleterm = require("toggleterm")

toggleterm.setup({
	open_mapping = [[<c-\>]],
})

utils.map("n", "<Leader>th", "<CMD>ToggleTerm direction=horizontal<CR>")
utils.map("n", "<Leader>tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")
utils.map("n", "<Leader>tf", "<CMD>ToggleTerm direction=float<CR>")

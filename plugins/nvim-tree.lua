local utils = require("markrikhter.utilities")

require("nvim-tree").setup({
	disable_netrw = true,
	open_on_setup = true,
	open_on_setup_file = true,
	open_on_tab = true,
	diagnostics = {
		enable = true,
	},
	view = {
		side = "left",
		hide_root_folder = true,
		mappings = {
			list = {
				{
					key = "<C-K>",
					action = "",
				},
				{
					key = "h",
					action = "close_node",
				},
				{
					key = "l",
					action = "edit",
				},
			},
		},
	},
	renderer = {
		indent_markers = {
			enable = true,
		},
	},
})

utils.map("n", "<F1>", '<CMD>lua require("nvim-tree").toggle()<CR>')

local M = {}

M.open_in_new_tab = function()
	print(vim.api.nvim_buf_get_name(0))
end

return M

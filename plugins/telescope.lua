local utils = require("markrikhter.utilities")
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		scroll_strategy = "limit",
		path_display = "smart",
		mappings = {
			i = {
				-- Ctrl+u чистит поле ввода
				["<C-u>"] = false,
				["<Esc>"] = actions.close,
				["<C-J>"] = actions.move_selection_next,
				["<C-K>"] = actions.move_selection_previous,
				["<TAB>"] = actions.toggle_selection,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = false,
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "ignore_case", -- or "ignore_case" or "respect_case"
		},
	},
})

require("telescope").load_extension("fzf")

-- Открывакт поиск файлов
utils.map("n", "<Leader>ff", "<CMD>lua require('markrikhter.plugins.telescope').project_files()<CR>")

-- Открывает поиск в файлах по строке
utils.map("n", "<Leader>fg", "<CMD>Telescope live_grep<CR>")

--  Открывает поиск среди буфферов
utils.map("n", "<Leader>fb", "<CMD>Telescope buffers<CR>")

-- При отсутствии git репозитория, ищет все файлы
local M = {}

M.project_files = function()
	local ok = pcall(require("telescope.builtin").git_files)
	if not ok then
		require("telescope.builtin").find_files()
	end
end

return M

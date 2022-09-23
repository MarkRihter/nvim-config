local actions = require('telescope.actions')

require('telescope').setup({
	defaults = {
		scroll_strategy = 'limit',
		path_display = 'smart',
		mappings = {
			i = {
				-- Ctrl+u чистит поле ввода
				["<C-u>"] = false,
				['<Esc>'] = actions.close,
				['<C-J>'] = actions.move_selection_next,
                ['<C-K>'] = actions.move_selection_previous,
                ['<TAB>'] = actions.toggle_selection,
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = false,
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
		},
  },
})

require('telescope').load_extension('fzf')

-- <Leader>+f открывакт поиск файлов
vim.keymap.set('n', '<C-F>', '<CMD>lua require(\'markrikhter.plugins.telescope\').project_files()<CR>', { noremap = true, silent = true })

-- <Leader>+G открывает поиск в файлах по строке
vim.keymap.set('n', '<C-G>', '<CMD>Telescope live_grep<CR>', { noremap = true, silent = true })

-- При отсутствии git репозитория, ищет все файлы
local M = {}

M.project_files = function()
  local ok = pcall(require"telescope.builtin".git_files)
  if not ok then require"telescope.builtin".find_files() end
end

return M

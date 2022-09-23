local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

-- Отключаем навигацю по файлу на Ctrl+d/u/b/f
map('n', '<C-D>', '')
map('n', '<C-U>', '')
map('n', '<C-B>', '')
map('n', '<C-F>', '')

-- map('n', '[[', '')
-- map('n', ']]', '')

-- Ctrl+q закрывает буффер
map('n', '<C-Q>', '<CMD>q<CR>')

-- Разделить окно горизонтально и вертикально на <Leader>+h и <Leader>+v соответственно
map('n', '<Leader>h', '<CMD>split<CR>')
map('n', '<Leader>v', '<CMD>vsplit<CR>')

-- Ctrl+h/j/k/l/ переключает окна в соответствии с направлением
map('n', '<C-H>', '<C-W>h')
map('n', '<C-J>', '<C-W>j')
map('n', '<C-K>', '<C-W>k')
map('n', '<C-L>', '<C-W>l')

map('i', '<C-H>', '<Left>')
map('i', '<C-J>', '<Down>')
map('i', '<C-K>', '<Up>')
map('i', '<C-L>', '<Right>')

-- Alt+up/right - Увеличение размера окна по горизонтали/вертикали. Ctrl+down|left - Уменьшение
map('n', '<A-k>', '<CMD>resize +3<CR>')
map('n', '<A-j>', '<CMD>resize -3<CR>')
map('n', '<A-l>', '<CMD>vertical resize +5<CR>')
map('n', '<A-h>', '<CMD>vertical resize -5<CR>')

-- Ctrl-s сохраняет файл
map('n', '<C-S>', '<CMD>w<CR>')

-- Ctrl+d дублирует строку
map('n', '<C-D>', 'yyp')

-- leader-o/O Вставляет пустую строку под/над курсором
map('n', '<Leader>o', 'o<ESC>')
map('n', '<Leader>O', 'O<ESC>')

-- Shift+j/k перемещает строку вниз/вверх
map('n', '<S-J>', '<CMD>move .+1<CR>')
map('n', '<S-K>', '<CMD>move .-2<CR>')

-- Чистит результаты последнего поиска из буфера
map('n', '<Leader>sc', '<CMD>noh<CR>')

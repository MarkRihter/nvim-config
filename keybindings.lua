local utils = require("markrikhter.utilities")
-- Отключаем навигацю по файлу на Ctrl+d/u/b/f
utils.map("n", "<C-D>", "")
utils.map("n", "<C-U>", "")
utils.map("n", "<C-B>", "")
utils.map("n", "<C-F>", "")

-- map('n', '[[', '')
-- map('n', ']]', '')

-- Ctrl+q закрывает буффер
utils.map("n", "<C-Q>", "<CMD>q<CR>")

-- Разделить окно горизонтально и вертикально на <Leader>+h и <Leader>+v соответственно
utils.map("n", "<Leader>h", "<CMD>split<CR>")
utils.map("n", "<Leader>v", "<CMD>vsplit<CR>")

-- Ctrl+h/j/k/l/ переключает окна в соответствии с направлением
utils.map("n", "<C-H>", "<C-W>h")
utils.map("n", "<C-J>", "<C-W>j")
utils.map("n", "<C-K>", "<C-W>k")
utils.map("n", "<C-L>", "<C-W>l")

utils.map("i", "<C-H>", "<Left>")
utils.map("i", "<C-J>", "<Down>")
utils.map("i", "<C-K>", "<Up>")
utils.map("i", "<C-L>", "<Right>")

-- Ctrl-s сохраняет файл
utils.map("n", "<C-S>", "<CMD>w<CR>")

-- Ctrl+d дублирует строку
utils.map("n", "<C-D>", "yyp")

-- leader-o/O Вставляет пустую строку под/над курсором
utils.map("n", "<Leader>o", "o<ESC>")
utils.map("n", "<Leader>O", "O<ESC>")

-- Shift+j/k перемещает строку вниз/вверх
utils.map("n", "<S-J>", "<CMD>move .+1<CR>")
utils.map("n", "<S-K>", "<CMD>move .-2<CR>")

-- Чистит результаты последнего поиска из буфера
utils.map("n", "<Leader>cs", "<CMD>noh<CR>")

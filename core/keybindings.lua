local keymap = vim.keymap

local opts = { silent = true, noremap = true }

-- Отключаем навигацю по файлу на Ctrl+d/u/b/f
-- keymap.set("n", "<C-D>", "")
-- keymap.set("n", "<C-U>", "")
-- keymap.set("n", "<C-B>", "")
-- keymap.set("n", "<C-F>", "")

-- map('n', '[[', '')
-- map('n', ']]', '')

-- Ctrl+q закрывает буффер
-- keymap.set("n", "<C-Q>", "<CMD>q<CR>")

-- Разделить окно горизонтально и вертикально на <Leader>+h и <Leader>+v соответственно
opts.desc = "Horizontal window separation"
keymap.set("n", "<leader>h", "<CMD>split<CR>", opts)
opts.desc = "Vertical window separation"
keymap.set("n", "<leader>v", "<CMD>vsplit<CR>", opts)

-- Ctrl+h/j/k/l/ переключает окна в соответствии с направлением
opts.desc = "Switching to the left window"
keymap.set("n", "<C-H>", "<C-W>h", opts)
opts.desc = "Switching to the bottom window"
keymap.set("n", "<C-J>", "<C-W>j", opts)
opts.desc = "Switching to the right window"
keymap.set("n", "<C-K>", "<C-W>k", opts)
opts.desc = "Switching to the top window"
keymap.set("n", "<C-L>", "<C-W>l", opts)

opts.desc = "Close insert mode"
keymap.set("i", "<C-c>", "<ESC>", opts)

-- keymap.set("i", "<C-H>", "<Left>")
-- keymap.set("i", "<C-J>", "<Down>")
-- keymap.set("i", "<C-K>", "<Up>")
-- keymap.set("i", "<C-L>", "<Right>")

-- Ctrl-s сохраняет файл
-- keymap.set("n", "<C-S>", "<CMD>w<CR>")

-- Ctrl+d дублирует строку
-- keymap.set("n", "<C-D>", "yyp")

-- leader-o/O Вставляет пустую строку под/над курсором
-- keymap.set("n", "<Leader>o", "o<ESC>")
-- keymap.set("n", "<Leader>O", "O<ESC>")

-- Shift+j/k перемещает строку вниз/вверх
opts.desc = "Moving current line down"
keymap.set("n", "<S-J>", "<CMD>move .+1<CR>", opts)
opts.desc = "Moving current line up"
keymap.set("n", "<S-K>", "<CMD>move .-2<CR>", opts)

-- Чистит результаты последнего поиска из буфера
-- keymap.set("n", "<Leader>cs", "<CMD>noh<CR>")

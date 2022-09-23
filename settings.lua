local o = vim.o
local g = vim.g

o.termguicolors = true

-- Установка темы base16-dracula как дефолтную
vim.cmd[[colorscheme base16-gruvbox-dark-soft]]

-- Кол-во строк над и под курсором
o.scrolloff = 10

-- История комманд ":", хранящихся в истории
o.history = 100

-- Символы, воспринимаемые в качестве парных
o.matchpairs = '(:),{:},[:],<:>'

-- Окно, на которое наведена мышка автоматически активируется
o.mousefocus = true

-- Максимальное кол-во табов
o.tabpagemax = 20

-- Отображение номеров строк
o.number = true

-- Минимальная ширина солонки с номерами строк
o.numberwidth = 4

-- Номера строк отображаются относительно текущей строки
o.relativenumber = true

-- При горизизонтальном разделении помещает новое окно вниз
o.splitbelow = true

-- При вертикальном разделении помещает новое окно справа
o.splitright = true

-- При перемещении по файлу, курсор помещается на первую не пустую линию
o.startofline = true

-- Не сворачивать строки при переполнении окна просмотра
o.wrap = false

-- Устанавливаем ширину таба в 4 символа
o.tabstop = 2
o.softtabstop = 2

-- Ширина автоотступа
o.shiftwidth = 2

-- Включаем автоматические отступы
o.autoindent = true
o.smartindent = true

-- Подчеркивание текущей линии
o.cursorline = true

-- Отключаем бэкап
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Установка пробела в качестве <leader> 
g.mapleader = ' '
g.maplocalleader = ' '

vim.opt.clipboard:append { 'unnamedplus' }

vim.diagnostic.config({
  float = {
    source = 'always',
		focusable = false,
  },
})


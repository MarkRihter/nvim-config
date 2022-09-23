require('lualine').setup({
    options = {
		icons_enabled = true,
		globalstatus = true,
        theme = 'base16',
		always_divide_middle = false,
		disabled_filetypes = {
			'netrw',
		},
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            'branch',
			'diagnostics'
        },
        lualine_c = {
            { 'filename', file_status = true, path = 1 },
        },
        lualine_x = { 'diff', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = {
            { 'location', color = { gui = 'bold' } },
        },
    },
	extensions = { 'nvim-tree' },
})

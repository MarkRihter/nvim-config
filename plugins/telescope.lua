return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    event = "VeryLazy",
    lazy = true,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local keymap = vim.keymap
        local builtin = require('telescope.builtin')

        keymap.set('n', '<leader>ff', builtin.find_files, { desc = "telescope: Find files" })
        keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "telescope: Live grep" })
        keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "telescope: Grep string" })
        keymap.set('n', '<leader>fb', builtin.buffers, { desc = "telescope: Buffers" })
        keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "telescope: Old files" })
        keymap.set('n', '<leader>fq', builtin.quickfix, { desc = "telescope: Quick fix list" })

        local telescope = require("telescope")
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<Esc>"] = actions.close,
                        ["<C-J>"] = actions.move_selection_next,
                        ["<C-K>"] = actions.move_selection_previous,
                        ["<TAB>"] = actions.toggle_selection,
                    },
                },
            }
        })
    end
}

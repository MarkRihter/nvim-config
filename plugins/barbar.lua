return {
    'romgrk/barbar.nvim',
    config = function()
        local barbar = require 'barbar'

        barbar.setup({
            animation = true,
            closable = true,
            clickable = true,
        })

        local keymap = vim.keymap

        local opts = { noremap = true, silent = true }

        opts.desc = 'barbar: Previous buffer'
        keymap.set("n", "<A-,>", '<Cmd>BufferPrevious<CR>', opts)
        opts.desc = 'barbar: Next buffer'
        keymap.set("n", "<A-.>", '<Cmd>BufferNext<CR>', opts)

        opts.desc = 'barbar: Move buffer to previous position'
        keymap.set("n", "<A-<>", '<Cmd>BufferMovePrevious<CR>', opts)
        opts.desc = 'barbar: Move buffer to next position'
        keymap.set("n", "<A->>", '<Cmd>BufferMoveNext<CR>', opts)

        opts.desc = 'barbar: Close buffer'
        keymap.set("n", "<leader>bc", '<Cmd>BufferClose<CR>', opts)
        opts.desc = 'barbar: Close all buffers except selected'
        keymap.set("n", "<leader>be", '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
        opts.desc = 'barbar: Pin/unpin biffer'
        keymap.set("n", "<leader>bn", '<Cmd>BufferPin<CR>', opts)
        opts.desc = 'barbar: Picking mode'
        keymap.set("n", "<leader>bp", '<Cmd>BufferPick<CR>', opts)
    end
}

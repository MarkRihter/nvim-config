local function on_attach(bufnr)
    local api = require "nvim-tree.api"

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    local keymap = vim.keymap

    local opts = { buffer = bufnr, noremap = true, silent = true }

    opts.desc = 'nvim-tree: Collapse all'
    keymap.set("n", "<leader>tc", api.tree.collapse_all, opts)
    opts.desc = 'nvim-tree: Expand all'
    keymap.set('n', '<leader>te', api.tree.expand_all, opts)
    opts.desc = 'nvim-tree: Open'
    keymap.set('n', 'l', api.node.open.edit, opts)
    opts.desc = 'nvim-tree: Close'
    keymap.set('n', 'h', api.node.navigate.parent_close, opts)

    keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "nvim-tree: Toggle file explorer" })
    keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>",
        { desc = "nvim-tree: Toggle file explorer on current file" })
end

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    priority = 51,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- optionally enable 24-bit colour
        --vim.opt.termguicolors = true

        require("nvim-tree").setup {
            renderer = {
                group_empty = true,
                indent_markers = {
                    enable = true,
                },
            },
            on_attach = on_attach
        }
    end,
}

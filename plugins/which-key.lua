return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    lazy = true,
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 1000
    end,
    opts = {
    }
}

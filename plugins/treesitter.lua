return {
    "nvim-treesitter/nvim-treesitter",
		config = function() 
			local treesitter = require "nvim-treesitter.configs"

			treesitter.setup({
				ensure_installed = { "lua", "javascript", "typescript", "css", "scss", "c_sharp" },

        auto_install = true,

				highlight = {
					enable = true
				}
      })
		end
}

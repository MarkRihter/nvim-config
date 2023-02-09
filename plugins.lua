require("packer").startup(function(use)
	-- Package manager
	use("wbthomason/packer.nvim")

	-- Looks
	use("ful1e5/onedark.nvim")
	use("kyazdani42/nvim-web-devicons")
	use({
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
			require("markrikhter.plugins.lualine")
		end,
	})

	use("romgrk/barbar.nvim")

	use("lukas-reineke/indent-blankline.nvim")

	-- Functionality
	use({
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.0",
			requires = { { "nvim-lua/plenary.nvim" } },
		},
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
		},
	})

	use("kyazdani42/nvim-tree.lua")

	use("terrortylor/nvim-comment")

	use("simrat39/symbols-outline.nvim")

	use("akinsho/toggleterm.nvim")

	-- Lsp, autocomplete and highlightig
	use({
		"neovim/nvim-lspconfig",
		requires = { "hrsh7th/cmp-nvim-lsp" },
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use("JoosepAlviste/nvim-ts-context-commentstring")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	use("onsails/lspkind.nvim")

	use("jose-elias-alvarez/null-ls.nvim")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
end)

require("markrikhter.plugins.lsp")
require("markrikhter.plugins.treesitter")
require("markrikhter.plugins.telescope")
require("markrikhter.plugins.indent-blankline")
require("markrikhter.plugins.barbar")
require("markrikhter.plugins.nvim-tree")
require("markrikhter.plugins.symbols-outline")
require("markrikhter.plugins.comment")
require("markrikhter.plugins.cmp")
require("markrikhter.plugins.null-ls")
require("markrikhter.plugins.toggleterm")
require("markrikhter.plugins.onedark")

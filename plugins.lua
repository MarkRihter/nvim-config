require('packer').startup(
	function(use)
		use 'wbthomason/packer.nvim'

		use 'RRethy/nvim-base16'

		use 'kyazdani42/nvim-web-devicons'

		use({
			'nvim-lualine/lualine.nvim',
			event = 'BufEnter',
			config = function() require('markrikhter.plugins.lualine') end,
		})

		use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate',
		}

		use {{
				'nvim-telescope/telescope.nvim',
				tag = '0.1.0',
				requires = { {'nvim-lua/plenary.nvim'} },
			},
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				run = 'make',
			}
		}

		use 'kyazdani42/nvim-tree.lua'

		use 'lukas-reineke/indent-blankline.nvim'

		use 'terrortylor/nvim-comment'

		use 'glepnir/dashboard-nvim'

		use 'romgrk/barbar.nvim'

		use 'simrat39/symbols-outline.nvim'

		use 'JoosepAlviste/nvim-ts-context-commentstring'

		use {
			'neovim/nvim-lspconfig',
			requires = { 'hrsh7th/cmp-nvim-lsp' }
		}

		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'

		use 'onsails/lspkind.nvim'
	end)


require('markrikhter.plugins.lsp')
require('markrikhter.plugins.treesitter')
require('markrikhter.plugins.telescope')
require('markrikhter.plugins.indent-blankline')
require('markrikhter.plugins.barbar')
require('markrikhter.plugins.nvim-tree')
require('markrikhter.plugins.symbols-outline')
require('markrikhter.plugins.comment')
require('markrikhter.plugins.cmp')

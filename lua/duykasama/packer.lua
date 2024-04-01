vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use ('wbthomason/packer.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	require('packer').startup(function(use)
		use({ 'rose-pine/neovim', as = 'rose-pine' })
	end)

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/nvim-treesitter-context')

	use ('ThePrimeagen/harpoon')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use ('natecraddock/workspaces.nvim')
	use {'github/copilot.vim'}
	use {'tpope/vim-fugitive'}
	use {'lewis6991/gitsigns.nvim'}
	use("mbbill/undotree")

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
	}

end)

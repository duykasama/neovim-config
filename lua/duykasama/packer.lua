vim.cmd [[packadd packer.vim]]

return require('packer').startup(function(use)
	use ('wbthomason/packer.nvim')

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
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
	use ('natecraddock/sessions.nvim')

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

	use {'github/copilot.vim'}

	use {'tpope/vim-fugitive'}

	use {'folke/noice.nvim'}
	use {'MunifTanjim/nui.nvim'}
	use {'rcarriga/nvim-notify'}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {'mfussenegger/nvim-dap'}
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	use {'folke/tokyonight.nvim'}
	use {'dracula/vim'}
	use {'morhetz/gruvbox'}
	use {'joshdick/onedark.vim'}
	use {'rebelot/kanagawa.nvim'}
	use {'edeneast/nightfox.nvim'}
	use {'altercation/vim-colors-solarized'}

	use {'goolord/alpha-nvim'}
	use {'nvim-tree/nvim-web-devicons'}

	use {'lewis6991/gitsigns.nvim'}

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end
	}
end)

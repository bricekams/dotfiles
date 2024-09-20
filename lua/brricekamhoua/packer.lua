-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { {"nvim-lua/plenary.nvim"} }
	}
	use { "rose-pine/neovim", as = "rose-pine" }

	use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
	use "tpope/vim-fugitive"
  use {
    'nvim-lualine/lualine.nvim',
  }
  use {
    -- devicons
    'kyazdani42/nvim-web-devicons',
  }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	use "supermaven-inc/supermaven-nvim"
  use "nvim-tree/nvim-tree.lua"
  use "aserowy/tmux.nvim"
end)

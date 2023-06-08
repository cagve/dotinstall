--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use ('wbthomason/packer.nvim', { run = ':PackerSync' })

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use 'nvim-treesitter/playground'
	use 'nvim-lua/plenary.nvim'
	use 'ThePrimeagen/harpoon'
	use 'nvim-lualine/lualine.nvim'
	use  "alexghergh/nvim-tmux-navigation"


	-- TELESCOPE
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }

	-- LSP
	use { 'neovim/nvim-lspconfig' }

	-- Autocompletion
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-nvim-lua' }

	-- Snippets
	use { 'L3MON4D3/LuaSnip' }

	use { 'numToStr/Comment.nvim' }
	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'
	use { 'windwp/nvim-autopairs' }
end)

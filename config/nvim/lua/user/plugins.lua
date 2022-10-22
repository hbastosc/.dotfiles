local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fonts
  use 'kyazdani42/nvim-web-devicons'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Configurations for LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Intellisense
  use 'hrsh7th/nvim-cmp' -- autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use "nvim-lua/plenary.nvim"

  -- Theme
  use { "ellisonleao/gruvbox.nvim" }
  use { 'folke/tokyonight.nvim' }
  use {
  	  "catppuccin/nvim",
  	  as = "catppuccin",
  }

  -- Buffer Line plugin
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Status Line plugin
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      "SmiteshP/nvim-navic",
      requires = "neovim/nvim-lspconfig"
  }
  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Git Integrations
  use {
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
    }
  }

end)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "kyazdani42/nvim-web-devicons",
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/playground",
  "tpope/vim-fugitive",
  "nvim-lualine/lualine.nvim",
  "mbbill/undotree",
  "theprimeagen/harpoon",
  {
    "rose-pine/neovim",
     name = "rose-pine",
     lazy = false,
     priority = 1000,
     config = function()
       require("rose-pine").setup({
         disable_background = true,
         disable_italics = true,
       })
       vim.cmd("colorscheme rose-pine")
     end
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},             -- Required
      {"williamboman/mason.nvim"},           -- Optional
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},         -- Required
      {"hrsh7th/cmp-nvim-lsp"},     -- Required
      {"hrsh7th/cmp-buffer"},       -- Optional
      {"hrsh7th/cmp-path"},         -- Optional
      {"saadparwaiz1/cmp_luasnip"}, -- Optional
      {"hrsh7th/cmp-nvim-lua"},     -- Optional

      -- Snippets
      {"L3MON4D3/LuaSnip"},             -- Required
      {"rafamadriz/friendly-snippets"}, -- Optional
    }
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"}
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require("gitsigns").setup()
    end
  }
})

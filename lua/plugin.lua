-- plugin.lua
-- here you'll find all the plugins that are used by this conf
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- gitsigns for git support
  use { 'lewis6991/gitsigns.nvim' }

  -- telescope is a cool fuzzy finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = {
          {'nvim-lua/plenary.nvim'}
      }
  }
  -- also adding the file browser extension
  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- lsp-zero
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- lsp support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }

  -- treesiter for syntax highlight, indenting and many others
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- catppuccin theme
  use ({
      "catppuccin/nvim", as = "catppuccin",
      config = function()
          vim.cmd.colorscheme "catppuccin-mocha"
      end
  })

  -- a cool bufferline for tab management
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
end)

-- plugin.lua
-- here you'll find all the plugins that are used by this conf
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- telescope is a cool fuzzy finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = {
          {'nvim-lua/plenary.nvim'}
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

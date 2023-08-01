-- plugin.lua
-- here you'll find all the plugins that are used by this conf
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
end)

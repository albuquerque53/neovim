-- bufferline.lua
vim.opt.termguicolors = true
require("bufferline").setup{}

vim.api.nvim_set_keymap('n', 'gt', '<cmd>BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', 'gT', '<cmd>BufferLineCyclePrev<CR>', {})

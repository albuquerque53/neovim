-- keys.lua
-- all the keybinds are here
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>cl', ':bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':bufdo bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcs', ':vsplit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fce', ':edit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fpe', ':edit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fps', ':vsplit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcl', ':luafile ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pi', ':PackerInstall<cr>', { noremap = true })

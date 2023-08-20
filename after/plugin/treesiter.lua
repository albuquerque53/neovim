-- treesiter.lua

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "vimdoc", "php", "phpdoc", "go", "javascript", "typescript" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
}

-- lsp.lua
-- here you'll find my LSP configuration

-- lsp-zero:
local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
  "intelephense",
  "gopls"
})

lsp.on_attach(function (client, bufnr)
    local opts = {buffer = 0}

    vim.diagnostic.config({
        virtual_text = true,
    })

    lsp.default_keymaps({buffer = bufnr})

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "<leader>df", "<cmd>Telescope diagnostics<cr>", opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

-- cmp:
local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})

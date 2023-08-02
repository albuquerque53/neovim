local lsp = require("lsp-zero")
lsp.preset("recommended")

local on_attach = function ()
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
end

lsp.ensure_installed({
  "phpactor",
})

lsp.configure("phpactor", {
    on_attach = on_attach,
})

lsp.setup()

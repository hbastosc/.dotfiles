local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Very bad place
vim.keymap.set("n", "Q", "<nop>")


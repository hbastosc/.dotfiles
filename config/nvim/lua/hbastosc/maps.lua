local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Very bad place
keymap.set("n", "Q", "<nop>")

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

-- Next/Previous/Close buffer
keymap.set("n", "<leader>bn", "<cmd>bn<CR>")
keymap.set("n", "<leader>bp", "<cmd>bp<CR>")
keymap.set("n", "<leader>bd", "<cmd>bd<CR>")

-- Split vertical/horizontal, reset size and close panes
keymap.set("n", "<leader>sv", "<C-W>v")
keymap.set("n", "<leader>sh", "<C-W>h")
keymap.set("n", "<leader>se", "<C-W>=")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")

-- remove highlight of search
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- Trouble remaps
keymap.set("n", "<leader>xx", function() require("trouble").open() end)
keymap.set("n", "<leader>xc", function() require("trouble").close() end)
keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end)
keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
keymap.set("n", "<leader>xq", function() require("trouble").open("quickfix") end)
keymap.set("n", "<leader>xl", function() require("trouble").open("loclist") end)
keymap.set("n", "gR", function() require("trouble").open("lsp_references") end)

-- easy exit terinal
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- vim.o.background = "dark" -- or "light" for light mode
-- require("gruvbox").setup()
-- vim.cmd([[colorscheme gruvbox]])

-- vim.o.background = "dark"
-- require("tokyonight").setup()
-- vim.cmd([[ colorscheme tokyonight-night]])

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
    integrations = {
        neogit = true,
        cmp = true,
        treesitter = true,
        telescope = true,
    },
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
})
vim.api.nvim_command "colorscheme catppuccin"

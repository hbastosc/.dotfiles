return {
	-- Useful plugin to show you pending keybinds.
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			disable_background = true,
			disable_italics = false,
			highlight_groups = {
				CursorLine = { bg = "rose", blend = 3 },
				ColorColumn = { bg = "gold", blend = 30 },
				CursorLineNr = { fg = "gold" },
				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
				TelescopePromptNormal = { bg = "base" },
				TelescopeResultsNormal = { fg = "subtle", bg = "none" },
				TelescopeSelection = { fg = "text", bg = "base" },
				TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
			},
		})
		vim.cmd("colorscheme rose-pine")
		-- vim.cmd("colorscheme rose-pine-dawn")
	end,
}

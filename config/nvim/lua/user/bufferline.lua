diagnostics_indicator = function(count, level, diagnostics_dict, context)
  local s = " "
  for e, n in pairs(diagnostics_dict) do
    local sym = e == "error" and " "
      or (e == "warning" and " " or "" )
    s = s .. n .. sym
  end
  return s
end

local frappe = require("catppuccin.palettes").get_palette "frappe"
require("bufferline").setup{
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_indicator = diagnostics_indicator,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      },
    },
  },
	highlights = require("catppuccin.groups.integrations.bufferline").get {
		styles = { "italic", "bold" },
		custom = {
			all = {
				fill = { bg = "#000000" },
			},
			mocha = {
				background = { fg = frappe.text },
			},
			latte = {
				background = { fg = "#000000" },
			},
		},
	},
}

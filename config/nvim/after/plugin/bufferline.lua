local ok, bufferline = pcall(require, "bufferline")
if not ok then
  return
end

diagnostics_indicator = function(count, level, diagnostics_dict, context)
  local s = " "
  for e, n in pairs(diagnostics_dict) do
    local sym = e == "error" and " "
      or (e == "warning" and " " or "" )
    s = s .. n .. sym
  end
  return s
end

bufferline.setup{
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
	},
}

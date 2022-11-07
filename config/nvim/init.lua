require("hbastosc.options")
require("hbastosc.maps")
require("hbastosc.plugins")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require("hbastosc.macos")
end
if is_win then
  require("hbastosc.windows")
end

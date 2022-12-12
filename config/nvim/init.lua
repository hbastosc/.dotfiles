require("hbastosc.options")
require("hbastosc.maps")
require("hbastosc.packer")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_linux = has "linux"

if is_linux then
    require("hbastosc.linux")
end
if is_mac then
    require("hbastosc.macos")
end
if is_win then
    require("hbastosc.windows")
end

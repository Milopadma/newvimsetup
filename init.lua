print("init.lua loaded")
-- check if this was loaded in VSCODE first
if vim.g.vscode ~= nil then
    print("VSCode detected")
    -- load the vscodeinit.lua
    require("vscodeinit")
    -- dont load this init
    return
else
    print("VSCode not detected")
end

require('plugins')
require('base')
require('remap')
require('nvim_comment').setup()
-- require('null-ls')

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("bufferline").setup {}
require('neoscroll').setup(
-- set the scroll animation speed
    {
        easing_function = "quadratic",
        highlight = "Search",
        cursor_scrolls_alone = true,
    }
)

-- remove any trailing whitespace
vim.cmd("autocmd BufWritePre * %s/\\s\\+$//e")

-- for which-key timeoutlen
vim.g.timeoutlen = 1

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('macos')
end
if is_win then
    require('windows')
end

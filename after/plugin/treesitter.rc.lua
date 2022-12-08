local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'tsx',
        'lua',
        'json',
        'css',
    },
    autotag = {
        enable = true,
    },
}


-- for the nvim-ts-context-commentstring plugins
require 'nvim-treesitter.configs'.setup {
    context_commentstring = {
        enable = true
    }
}

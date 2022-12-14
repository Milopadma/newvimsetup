local status, prettier = pcall(require, 'prettier')
if not status then
    return
end

prettier.setup {
    bin = 'prettierd',
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'css',
        'scss',
        'less',
        'json',
        'graphql',
        'markdown',
        'vue',
        'yaml',
        'html',
        'svelte',
        'lua',
        'python',
        'java',
        'cpp',
    },
}

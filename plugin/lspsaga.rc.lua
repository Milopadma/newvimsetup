local status, saga = pcall(require, 'lspsaga')
if not status then
    return
end

saga.init_lsp_saga {
    server_filetype_map = {}
}


local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>ca', "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set('n', '<leader>to', "<cmd>Lspsaga open_floaterm<CR>", opts)
vim.keymap.set('t', '<leader>to', "<cmd>Lspsaga close_floaterm<CR>", opts)
-- to quickly comment out a line
vim.keymap.set('n', '<leader>cc', "<cmd>CommentToggle<CR>", opts)
vim.keymap.set('n', '<leader>n', "<cmd>tabnext<CR>", opts)

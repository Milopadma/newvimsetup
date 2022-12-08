local nnoremap = require("mylo.keymap").nnoremap

-- For normal nav
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

-- For bufferline
-- shift + h/l to move left/right
nnoremap("<S-h>", "<cmd>BufferLineCyclePrev<CR>")
nnoremap("<S-l>", "<cmd>BufferLineCycleNext<CR>")
nnoremap("<S-w>", "<cmd>BufferLinePickClose<CR>")

-- For telescope
nnoremap("<C-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fw", "<cmd>Telescope live_grep<CR>")

-- For Neotree
nnoremap("<leader>gst", "<cmd>Neotree float git_status toggle<CR>")
-- leader o to open Neotree float toggle
nnoremap("<leader>o", "<cmd>Neotree float toggle<CR>")

-- For commenting
-- when pressing option + /, it will comment out the line
nnoremap("<M-/>", "<cmd>CommentToggle<CR>")

-- For LSPsaga
local opts = { noremap = true, silent = true }
-- vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
-- vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
-- vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
-- vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
-- vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
-- vim.keymap.set('n', '<leader>ca', "<cmd>Lspsaga code_action<CR>", opts)
-- vim.keymap.set('n', '<leader>tf', "<cmd>Lspsaga open_floaterm<CR>", opts)
-- vim.keymap.set('t', '<leader>tf', "<cmd>Lspsaga close_floaterm<CR>", opts)
-- vim.keymap.set('t', '<Esc>', "<cmd>Lspsaga close_floaterm<CR>", opts)
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- For opening a floating terminal and running the code
vim.keymap.set('n', '<leader>tr', "<cmd>RunFile float toggle<CR>", opts)

-- for harpoon
vim.keymap.set('n', '<leader>h', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
vim.keymap.set('n', '<leader>a', "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
vim.keymap.set('n', '!', "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", opts)
vim.keymap.set('n', '@', "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", opts)
vim.keymap.set('n', '#', "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", opts)
vim.keymap.set('n', '$', "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", opts)

-- for lightspeed
vim.keymap.set('n', 's', "<Plug>Lightspeed_omni_s", {})

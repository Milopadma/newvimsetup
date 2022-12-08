local status, tabout = pcall(require, 'tabout')
if not status then
    return
end

tabout.setup {
    tabkey = '<S-Tab>',
    backwards_tabkey = '<C-Tab>',
    act_as_tab = true,
    act_as_shift_tab = true,
    enable_backwards = true,
    completion = true,
    tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = '`', close = '`' },
        { open = '(', close = ')' },
        { open = '[', close = ']' },
        { open = '{', close = '}' },
    },
    ignore_beginning = true,
    exclude = {},
}

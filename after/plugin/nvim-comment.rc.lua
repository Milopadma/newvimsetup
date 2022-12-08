local status, nvim_comment = pcall(require, 'nvim_comment')
if (not status) then
    return
end

nvim_comment.setup({
    marker_padding = true,
    comment_empty = true,
    create_mappings = false,
    line_mapping = "gcc",
    operator_mapping = "gc",
    hook = function()
        require("ts_context_commentstring.internal").update_commentstring()
    end
})

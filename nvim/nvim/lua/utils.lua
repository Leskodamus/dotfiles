-- Helper function to keybind
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Helper functions for coc

-- Show documentation
function ShowDocumentation()
    if vim.fn.CocAction('hasProvider', 'hover') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.fn.feedkeys('K', 'in')
    end
end


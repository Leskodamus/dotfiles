-- Helper function to keybind
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Leader key for more combinations
vim.g.mapleader = ','

-- Enable escape key to exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>')

-- Create new line in insert mode
map('i', '<C-o>', '<Esc>o')

-- Delete without copying
map('x', '<leader>d', '"_d')

-- Delete and paste but without overwriting copy register
map('x', '<leader>p', '"_dP')

-- Tab keys
map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')
map('n', 'th', ':tabprev<CR>')
map('n', 'tl', ':tabnext<CR>')
map('n', 'tn', ':tabnew<CR>')
map('n', 'td', ':tabclose<CR>')

-- Open terminal in a new horizontal window
map('n', '<C-w>t', ':new|:term<ESC>i')

-- Toggle spell check
map('n', '<leader>ss', ':setlocal spell!<CR>')

-- Open fzf menu with Telescope
map('n', '<leader><space>', ':Telescope find_files<CR>', { silent = true })
map('n', '<leader>?', ':Telescope buffers<CR>', { silent = true })


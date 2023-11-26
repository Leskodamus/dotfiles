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
map('n', 'd', '"_d')
map('x', 'd', '"_d')

-- Delete and copy 
map('n', '<leader>d', 'd')
map('x', '<leader>d', 'd')

-- Delete and paste with overwriting copy register
map('n', '<leader>p', '"_dP')
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
map('n', '<leader><space>', ':Telescope file_browser<CR>', { silent = true })
map('n', '<leader>.', ':Telescope file_browser hidden=true<CR>', { silent = true })
map('n', '<leader>f', ':Telescope find_files<CR>', { silent = true })
map('n', '<leader>h', ':Telescope find_files  hidden=true<CR>', { silent = true })
map('n', '<leader>/', ':Telescope live_grep<CR>', { silent = true })
map('n', '<leader>?', ':Telescope buffers<CR>', { silent = true })

-- Move line up/down
map('n', '<A-j>', ':m +1<CR>', { silent = true })
map('n', '<A-k>', ':m -2<CR>', { silent = true })

-- Debugging
map('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
map('n', '<leader>dc', function() require('dap').clear_breakpoints() end)
map('n', '<leader>ds', function() require('dap').continue() end)
map('n', '<leader>dt', function() require('dap').terminate() end)
map('n', '<leader>do', function() require('dap').step_over() end)
map('n', '<leader>di', function() require('dap').step_into() end)
map('n', '<leader>db', function() require('dap').step_out() end)


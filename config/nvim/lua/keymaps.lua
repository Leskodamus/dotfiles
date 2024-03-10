-- Helper function to keybind
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

--[[
n  Normal mode map. Defined using ':nmap' or ':nnoremap'.
i  Insert mode map. Defined using ':imap' or ':inoremap'.
v  Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
x  Visual mode map. Defined using ':xmap' or ':xnoremap'.
s  Select mode map. Defined using ':smap' or ':snoremap'.
c  Command-line mode map. Defined using ':cmap' or ':cnoremap'.
o  Operator pending mode map. Defined using ':omap' or ':onoremap'.

<Space>  Normal, Visual and operator pending mode map. Defined using
         ':map' or ':noremap'.
!  Insert and command-line mode map. Defined using 'map!' or
   'noremap!'.
--]]

-- Leader key for more combinations
vim.g.mapleader = ','

-- Enable escape key to exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>')

-- Create new line in insert mode
map('i', '<C-o>', '<Esc>o')

-- Delete without copying
map('n', '<leader>d', '"_d')
map('x', '<leader>d', '"_d')

map('n', '<leader>x', '"_x')
map('x', '<leader>x', '"_x')

-- Paste without yank
map('x', 'p', '"_dP')
map('x', '<leader>p', 'p')

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

-- Open terminal in a new tab
map('n', '<leader>tt', ':tabnew|:term<ESC>i')

-- Toggle spell check
map('n', '<leader>ss', ':setlocal spell!<CR>')

-- Open fzf menu with Telescope
map('n', '<leader><space>', ':Telescope file_browser<CR>', { silent = true })
map('n', '<leader>.', ':Telescope file_browser hidden=true<CR>', { silent = true })
map('n', '<leader>f', ':Telescope find_files<CR>', { silent = true })
map('n', '<leader>fa', ':Telescope find_files hidden=true<CR>', { silent = true })
map('n', '<leader>/', ':Telescope live_grep<CR>', { silent = true })
map('n', '<leader>?', ':Telescope buffers<CR>', { silent = true })
map('n', '<leader>vad', ':Telescope diagnostics<CR>', { silent = true })

-- Close buffer
map('n', '<leader>q', ':bd<CR>', { silent = true })

-- Switch buffers
map('n', '<leader>h', ':bp<CR>', { silent = true })
map('n', '<leader>l', ':bn<CR>', { silent = true })

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


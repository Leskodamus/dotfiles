-- Settings

vim.opt.encoding = 'utf-8'
vim.opt.shell = '/bin/zsh'
vim.opt.title = true
vim.opt.guicursor = ''
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.showcmd = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wildmenu = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.autochdir = true
vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 4
vim.opt.cmdheight = 1
vim.opt.autoread = true
vim.opt.magic = true
vim.opt.matchtime = 2
vim.opt.linebreak = true
vim.opt.textwidth = 500
vim.opt.whichwrap.extends = '<,>,h,l'
vim.opt.listchars.extends = 'space:·'

-- Load util functions

require 'utils'

-- Plugins

require('paq') {
    'savq/paq-nvim';
    'junegunn/fzf.vim';
    'nvim-lualine/lualine.nvim';
    'mg979/vim-visual-multi';
    'terrortylor/nvim-comment';
    'andweeb/presence.nvim';
    'ethanholz/nvim-lastplace';
    {'neoclide/coc.nvim', branch = 'release'};
}

require'nvim-lastplace'.setup{}
require'nvim_comment'.setup{}
require('lualine').setup {
    options = {
        theme = 'gruvbox_dark',
        icons_enabled = false,
        component_separators = { left = ' ', right = ' '},
        section_separators = { left = ' ', right = ' '},
    },
}

-- Keymaps

-- Leader key for more combinations
vim.g.mapleader = ','
-- Enable escape key to exit terminal mode
map('t', '<Esc>', '<C-\\><C-n>')
-- Create new line in insert mode
map('i', '<C-o>', '<Esc>o')
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
-- Toggle spell check
map('n', '<leader>ss', ':setlocal spell!<cr>')
-- Open fzf menu
map('n', '<leader><space>', ':Files<CR>', { silent = true })
map('n', '<leader>?', ':History<CR>', { silent = true })

-- Keymaps for coc
map('n', 'gd', ':call CocAction("jumpDefinition", "tab drop")<CR>', { silent = true })
map('n', 'K', ':lua ShowDocumentation()<CR>', { silent = true })
map('i', '<c-space>', 'coc#refresh()', { silent = true, expr = true })
map('i', '<cr>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<CR>"', { expr = true, replace_keycodes = false })
map('i', '<Tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"', { expr = true, replace_keycodes = false })
map('i', '<S-Tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "\\<S-Tab>"', { expr = true, replace_keycodes = false })
map('n', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "\\<C-f>"', { silent = true, nowait = true, expr = true })
map('n', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "\\<C-b>"', { silent = true, nowait = true, expr = true })
map('v', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "\\<C-f>"', { silent = true, nowait = true, expr = true })
map('v', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "\\<C-b>"', { silent = true, nowait = true, expr = true })
map('i', '<C-f>', 'coc#float#has_scroll() ? "\\<c-r>=coc#float#scroll(1)\\<cr>" : "\\<Right>"', { silent = true, nowait = true, expr = true })
map('i', '<C-b>', 'coc#float#has_scroll() ? "\\<c-r>=coc#float#scroll(0)\\<cr>" : "\\<Left>"', { silent = true, nowait = true, expr = true })


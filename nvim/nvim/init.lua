-- Settings

vim.opt.title = true
vim.opt.guicursor = ''
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autochdir = true
vim.opt.swapfile = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 4
vim.opt.matchtime = 2
vim.opt.linebreak = true
vim.opt.textwidth = 500
vim.opt.whichwrap.extends = '<,>,h,l'
vim.opt.listchars.extends = 'space:·'
vim.opt.splitbelow = true

-- Load util functions

require 'utils'

-- Plugins

require('paq') {
    'savq/paq-nvim';
    'nvim-lualine/lualine.nvim';
    'terrortylor/nvim-comment';
    'andweeb/presence.nvim';
    'ethanholz/nvim-lastplace';
    'nvim-lua/plenary.nvim';
    {'neoclide/coc.nvim', branch = 'release'};
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'};
    {'nvim-telescope/telescope.nvim', branch = '0.1.x'};
    'kylechui/nvim-surround';
}

require'nvim-lastplace'.setup{}
require'nvim_comment'.setup{}
require'nvim-surround'.setup{}

--[[ nvim-surround keybinds

    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

--]]

require('lualine').setup {
    options = {
        theme = 'gruvbox_dark',
        icons_enabled = false,
        component_separators = { left = ' ', right = ' '},
        section_separators = { left = ' ', right = ' '},
    },
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "markdown", "javascript", "typescript", "c", "cpp", "rust", "go", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Keymaps

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

-- Open fzf menu
map('n', '<leader><space>', ':Telescope find_files<CR>', { silent = true })
map('n', '<leader>?', ':Telescope buffers<CR>', { silent = true })

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


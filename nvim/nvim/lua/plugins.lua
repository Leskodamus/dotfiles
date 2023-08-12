require('paq') {
    'savq/paq-nvim';
    'nvim-lualine/lualine.nvim';
    'terrortylor/nvim-comment';
    'andweeb/presence.nvim';
    'ethanholz/nvim-lastplace';
    'nvim-lua/plenary.nvim';
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'};
    {'nvim-telescope/telescope.nvim', branch = '0.1.x'};
    'kylechui/nvim-surround';
    "blazkowolf/gruber-darker.nvim";
    -- LSP Support
    {'VonHeikemen/lsp-zero.nvim', branch = 'v2.x'};
    'neovim/nvim-lspconfig';
    'williamboman/mason.nvim';
    'williamboman/mason-lspconfig.nvim';
    -- Autocompletion
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-nvim-lsp';
    'L3MON4D3/LuaSnip';
}

-- Colorscheme
vim.cmd.colorscheme("gruber-darker")

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
    ensure_installed = { "markdown", "javascript", "typescript", "c", "cpp", "rust", "go", "lua", "vim", "vimdoc", "query", "html", "css", "json", "latex" },

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


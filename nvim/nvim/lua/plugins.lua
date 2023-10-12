require('paq') {
    'savq/paq-nvim';
    'terrortylor/nvim-comment';
    'andweeb/presence.nvim';
    'nvim-lua/plenary.nvim';
    'ethanholz/nvim-lastplace';
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'};
    {'nvim-telescope/telescope.nvim', branch = '0.1.x'};
    'kylechui/nvim-surround';
    "ellisonleao/gruvbox.nvim";
    'nvim-lualine/lualine.nvim';
    -- LSP Support
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'};
    'neovim/nvim-lspconfig';
    'williamboman/mason.nvim';
    'williamboman/mason-lspconfig.nvim';
    -- Autocompletion
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-path';
    'hrsh7th/cmp-cmdline';
    -- Snippets
    'hrsh7th/cmp-vsnip';
    'hrsh7th/vim-vsnip';
}

-- Colorscheme
require("gruvbox").setup({
    contrast = "hard",
    undercurl = true,
    underline = true,
    strikethrough = true,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
    },
})
vim.o.background = "dark" -- or "light"
vim.cmd([[colorscheme gruvbox]])

require('lualine').setup {
	options = {
		theme = "gruvbox_dark",
        icons_enabled = false,
        component_separators = { left = ' ', right = ' '},
        section_separators = { left = ' ', right = ' '},
	}
}

require('nvim_comment').setup{}
require('nvim-lastplace').setup{}

require('nvim-surround').setup{}

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

require('nvim-treesitter.configs').setup {
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


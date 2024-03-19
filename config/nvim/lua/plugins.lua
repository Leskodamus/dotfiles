-- Plugins managed with paq-nvim

require('paq') {
    'savq/paq-nvim';
    'terrortylor/nvim-comment';
    'andweeb/presence.nvim';
    'nvim-lua/plenary.nvim';
    'ethanholz/nvim-lastplace';
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'};
    'kylechui/nvim-surround';
    'nvim-lualine/lualine.nvim';
    -- Github Copilot
    'github/copilot.vim';
    -- Fuzzy finder
    {'nvim-telescope/telescope.nvim'};
    'nvim-telescope/telescope-file-browser.nvim';
    -- Code testing
    'klen/nvim-test';
    -- Debugging tools
    'mfussenegger/nvim-dap';
    'nvim-neotest/nvim-nio';
    'rcarriga/nvim-dap-ui';
    'theHamsta/nvim-dap-virtual-text';
    'mfussenegger/nvim-dap-python';
    'leoluz/nvim-dap-go';
    'folke/neodev.nvim';
    -- Neotree file browser
    'nvim-neo-tree/neo-tree.nvim';
    'MunifTanjim/nui.nvim';
    'nvim-tree/nvim-web-devicons';
    -- LSP Support
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'};
    'neovim/nvim-lspconfig';
    'williamboman/mason.nvim';
    'williamboman/mason-lspconfig.nvim';
    -- Go lang impl completion
    'ray-x/go.nvim';
    'ray-x/guihua.lua';
    -- Autocompletion
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-path';
    'hrsh7th/cmp-cmdline';
    -- Snippets
    'hrsh7th/cmp-vsnip';
    'hrsh7th/vim-vsnip';
    -- Themes
    {'rose-pine/neovim', as = 'rose-pine'};
}


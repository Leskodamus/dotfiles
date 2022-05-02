set encoding=utf8
set shell=/bin/zsh
syntax on 
set title
set number
set ruler
set relativenumber
set cursorline
set showcmd
set showmatch
set ignorecase
set smartcase
filetype plugin on
filetype indent on
set wildmenu
set incsearch
set hlsearch
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set history=500
set cmdheight=1
set autoread
set noswapfile
set magic
set mat=2
set lbr
set tw=500
set ai "Auto indent"
set si "Smart indent"
set wrap "Wraplines"
au FocusGained,BufEnter * checktime
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" map leader key
let mapleader = ","

" create new line in insert mode
imap <C-o> <esc>o

" fzf
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>? :History<CR>

" coc jump to definition in new tab
nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>

" tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap td :tabclose<CR>

" escape key
tnoremap <Esc> <C-\><C-n>

" spell checking
map <leader>ss :setlocal spell!<cr>

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary' 
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'lervag/vimtex'
Plug 'andweeb/presence.nvim', {'branch': 'main'}
Plug 'SidOfc/mkdx'
call plug#end()

" rust-analyzer for lspconfig
lua << EOF
require'lspconfig'.rust_analyzer.setup{}
EOF

" nvim-markdown
let g:vim_markdown_conceal = 0

" coc configuration 
highlight CocFloating ctermbg=0

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

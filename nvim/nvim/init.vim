set encoding=utf8
set shell=/bin/zsh
syntax on 
set guicursor=
set title
set ruler
set nu
set relativenumber
set nohlsearch
set showcmd
set hidden
set noerrorbells
set showmatch
set ignorecase
set smartcase
set wildmenu
set incsearch
set hlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
" set nowrap
set noswapfile
set nobackup
set clipboard=unnamedplus
set scrolloff=8
set history=500
set cmdheight=1
set autoread
set magic
set mat=2
set lbr
set tw=500
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set nolist
set lcs+=space:·
filetype plugin on
filetype indent on
au FocusGained,BufEnter * checktime

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'andweeb/presence.nvim', {'branch': 'main'}
Plug 'SidOfc/mkdx'
call plug#end()

" nvim-markdown
let g:vim_markdown_conceal = 0

" coc configuration 
highlight CocFloating ctermbg=8

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

" Use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

" Use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Format code on <cr>
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"

" Use tab to navigate completion list
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


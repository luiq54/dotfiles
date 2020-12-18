syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set iskeyword+=_                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number rnu                          " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set signcolumn=number
set termguicolors
let mapleader = ' '


call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot' " Better Syntax Support
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
    Plug 'sainnhe/edge' " Colorscheme
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc
    Plug 'vim-airline/vim-airline' " Airline
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-commentary' "Comments
    Plug 'norcalli/nvim-colorizer.lua' "Colorizer
    Plug 'junegunn/rainbow_parentheses.vim' " Rainbow Parenthesis
    Plug 'tpope/vim-sleuth' " Auto tabs
    Plug 'tpope/vim-surround' " Surround
    " Plug 'neovim/nvim-lspconfig' " LSP config
    " Plug 'nvim-lua/completion-nvim' "LSP Completion
    Plug 'nvim-treesitter/nvim-treesitter' "TreeSitter
    Plug 'nvim-lua/lsp-status.nvim'
    "FZF
    "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    "Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    "Git Integration
    "Plug 'mhinz/vim-signify'
    "Plug 'tpope/vim-fugitive'
    "Plug 'tpope/vim-rhubarb'
    "Plug 'junegunn/gv.vim'
call plug#end()

set termguicolors
let g:edge_style = 'neon'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1
colorscheme edge
let g:airline_theme = 'edge'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0B8"
let g:airline_left_alt_sep = "\uE0B9"
let g:airline_right_sep = "\uE0BE"
let g:airline_right_alt_sep = "\uE0B9"


" Use completion-nvim in every buffer
" autocmd BufEnter * lua require'completion'.on_attach()

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
"map <c-p> to manually trigger completion
imap <silent> <c-p> <Plug>(completion_trigger)
nmap <tab> <Plug>(completion_smart_tab)
nmap <s-tab> <Plug>(completion_smart_s_tab)

luafile $HOME/.config/nvim/lua_settings.lua
source $HOME/.config/nvim/coc-settings.vim

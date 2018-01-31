""" Pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()


""" Vim Settings
filetype plugin indent on
syntax on
colorscheme Tomorrow-Night-Eighties
let airline_theme='tomorrow'
set colorcolumn=70
set guioptions-=r " Remove right scrollbar
set guioptions-=L " Remove left scrollar
set guioptions-=e " Remove GUI tabs
set guioptions+=c " Remove GUI dialogs
set guifont=Meslo\ LG\ S\ for\ Powerline:h11
let airline#extensions#tabline#enabled = 1
set mouse=c " Disable mouse support
let Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
set number
set hidden
set history=100
set nowrap
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch
set backspace=indent,eol,start

set splitbelow
set splitright

set directory=$HOME/.vim/swapfiles//

""" Plugins
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:AutoPairsMultilineClose = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


""" Key mappings
" let mapleader="\<Space>" " Set Space as leader key

" Moving between splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" Make arrows unuseful in normal mode
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

" Adding hjlk movement in cmd-mode
cnoremap <C-h> <Left>
cnoremap <C-j> <Up>
cnoremap <C-k> <Down>
cnoremap <C-l> <Right>

autocmd! filetype python nnoremap <buffer> <Leader>r :exec '!python' shellescape(@%, 1)<cr>

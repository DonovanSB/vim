set number
set title
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2

call plug#begin('~/.vim/plugged')
" Themes
Plug 'crusoexia/vim-monokai'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Flutter
Plug 'dart-lang/dart-vim-plugin' 
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'

call plug#end()

" Temas
colorscheme monokai

" Comandos personalizados
let NERDTreeQuitOnOpen=1
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

inoremap <silent><expr> <c-space> coc#refresh()

" Comandos flutter
let g:lsc_auto_map = v:true
let g:dart_format_on_save = 1
nnoremap <leader>fa :CocCommand flutter.run<cr>
nnoremap <leader>fq :CocCommand flutter.dev.quit<cr>
nnoremap <leader>fr :CocCommand flutter.dev.hotReload<cr>
nnoremap <leader>fR :CocCommand flutter.dev.hotRestart<cr>
nnoremap <leader>fo :CocCommand flutter.dev.openDevLog<cr>
nnoremap <leader>fc :CocCommand flutter.dev.clearDevLog<cr>
nnoremap <leader>fd :CocList FlutterDevices<cr>
nnoremap <leader>fe :CocList FlutterEmulators<cr>

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
set nowrap

call plug#begin('~/.vim/plugged')
" Themes
Plug 'crusoexia/vim-monokai'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'

"Flutter
Plug 'dart-lang/dart-vim-plugin' 
Plug 'Neevash/awesome-flutter-snippets'

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
nmap <Leader>d :bd<CR>

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Comandos flutter
"let g:lsc_auto_map = v:true
let g:dart_format_on_save = 1
nnoremap <leader>fa :CocCommand flutter.run<cr>
nnoremap <leader>fq :CocCommand flutter.dev.quit<cr>
nnoremap <leader>fr :CocCommand flutter.dev.hotReload<cr>
nnoremap <leader>fR :CocCommand flutter.dev.hotRestart<cr>
nnoremap <leader>fo :CocCommand flutter.dev.openDevLog<cr>
nnoremap <leader>fc :CocCommand flutter.dev.clearDevLog<cr>
nnoremap <leader>fd :CocList FlutterDevices<cr>
nnoremap <leader>fe :CocList FlutterEmulators<cr>
imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Comandos multicursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-a>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

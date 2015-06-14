set t_Co=256
execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
filetype on
let g:user_emmet_expandabbr_key = '<c-e>'
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#syntastic#enabled = 1

set number
set wrap
set textwidth=0
set wrapmargin=0
set expandtab
set tabstop=2
set shiftwidth=2

set statusline+=%#warning#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%{fugitive#statusline()}

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
nnoremap <C-w><F5> :SyntasticCheck<CR> :SyntasticToggleMode<CR>

let g:syntastic_cpp_compiler_options = ' -std=c++11'

set laststatus=2

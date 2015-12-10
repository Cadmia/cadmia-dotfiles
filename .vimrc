" ========= Plugins and colours =========
set t_Co=256              " Set 256 colours
" Run pathogen
execute pathogen#infect()
set background=dark       " Select dark background
colorscheme solarized     " Set colourscheme to solarized
syntax enable             " Enable syntax colouring

" ========= General settings =========
filetype on               " Enable filetype detection  
filetype plugin indent on " Enable autoindentation by filetype
set number                " Set line numbering on current line
set relativenumber        " Set relative numbering from current line
autocmd InsertEnter * :set number norelativenumber " Set standard line numbering in insert
autocmd InsertLeave * :set relativenumber          " Revert to relative line numbering out of insert

" ========= General settings (indentation) =========
set wrap         " Enable text wrapping
set textwidth=0  " Disable maximum text length 
set wrapmargin=0 " Set wrapping to occur at border
set expandtab    " Expand tab into spaces
set tabstop=2    " Set general tab length to 2
set shiftwidth=2 " shiftwidth=tabstop

" ========= General settings (search) =========
set incsearch " Highlight while searching
set hlsearch  " Highlight all matches when entering a search pattern
set ignorecase " Case insensitive pattern searching
set smartcase  " Use case-sensitive pattern searching if pattern includes an upcase

" ========= General settings (split) =========
set winwidth=84
set winheight=8
set winminheight=5
set winheight=999
set splitbelow
set splitright

" ========= General settings (statusline) =========
set statusline+=%#warning#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%{fugitive#statusline()}
set laststatus=2

" ========= Syntastic settings ==========
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" ========= Airline settings =========
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#syntastic#enabled = 1

" ========= Language Settings (Javascript) =========
let g:jsx_ext_required = 0 " Allow JSX in normal JSX files
let g:syntastic_javascript_checkers = ['eslint']

" ========= Rebindings =========
" Reindent entire file, return to last position
map <Leader>i mmgg=G`m<CR> 
" Clear search highlights
map <leader>h :nohlsearch<CR>

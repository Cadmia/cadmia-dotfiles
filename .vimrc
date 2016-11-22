call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'
Plug 'easymotion/vim-easymotion'
Plug 'posva/vim-vue'
Plug 'tpope/vim-sensible'

call plug#end()

set t_Co=256              " Set 256 colours
set background=dark       " Select dark background
colorscheme solarized     " Set colourscheme to solarized
set number                " Set line numbering on current line
set relativenumber        " Set relative numbering from current line
autocmd InsertEnter * :set number norelativenumber " Set standard line numbering in insert
autocmd InsertLeave * :set relativenumber          " Revert to relative line numbering out of insert
set wrap         " Enable text wrapping
set textwidth=0  " Disable maximum text length 
set wrapmargin=0 " Set wrapping to occur at border
set expandtab    " Expand tab into spaces
set tabstop=2    " Set general tab length to 2
set shiftwidth=2 " shiftwidth=tabstop

let g:ycm_confirm_extra_conf    = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm.py'
let g:ycm_extra_conf_vim_data   = ['&filetype']
let g:ycm_seed_identifiers_with_syntax = 1
autocmd CompleteDone * pclose

try
  source ~/.myvimrc
catch
endtry

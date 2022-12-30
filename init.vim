call plug#begin()

Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do':'python3 -m chadtree deps'}
Plug 'SirVer/ultisnips'

call plug#end()

filetype plugin indent on
syntax enable
set number
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_enabled = 0

set background=dark
colorscheme solarized
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_au
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

nnoremap <leader>v <cmd>CHADopen<cr>

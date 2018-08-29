
let g:tex_conceal=''

set laststatus=2
" 色付け、オートインデント
set autoindent
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

" set search path
set path+=**/include
set incsearch

" open vimgrep, grep ... resuls in quickfix window
autocmd QuickFixCmdPost *grep* cwindow

" grでカーソル下のキーワードをvimgrep
nnoremap <expr> gr ':vimgrep ;\<' . expand('<cword>') . '\>; **/*.c'

let g:tex_conceal=''

autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

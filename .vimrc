" Vim Plugins
call plug#begin()

 Plug 'itchyny/lightline.vim' 
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'mattn/emmet-vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 Plug 'frazrepo/vim-rainbow'
 Plug 'arzg/vim-colors-xcode'
 Plug 'wadackel/vim-dogrun'
 Plug 'eemed/sitruuna.vim'
 Plug 'mcmartelle/vim-monokai-bold'
 Plug 'gmoe/vim-eslint-syntax'
 Plug 'JarrodCTaylor/vim-sql-suggest'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" CoC tab key map
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" vim-rainbow 
let g:rainbow_active = 1

" Lightline colorscheme
let g:lightline = {
	\ 'colorscheme': 'landscape',
	\}
" Emmet shortcut
let g:user_emmet_leader_key='<C-Z>'


" Basic
set number
set relativenumber
set autoindent
syntax on
set sw=4
set tabstop=4
set laststatus=2
set wrap linebreak
" colorscheme monokai-bold
colorscheme monokai-bold


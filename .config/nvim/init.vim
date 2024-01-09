call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'rust-lang/rust.vim'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

set number
let g:airline_powerline_fonts = 1
colorscheme dracula
set termguicolors

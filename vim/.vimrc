" Gerardo Torres	https://gerardotorres.xyz/
"  __  __ __ _ _ ___  __ __ ___
"  \ \ / /| | '_ ` _ \| '__/ __|
"   \ V / | | | | | | | | | (__
" () \_/  |_|_| |_| |_|_|  \___|
"

" basic number and indentation settings
    set number			
    set autoindent          		
    set smartindent         		

" open .vimrc with \v key
    noremap <leader>v :e ~/.vimrc<CR> 

" search settings
    set hlsearch

colorscheme monokai

" return to the same line after reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
    endif

" quickly move lines up/down
    nnoremap <C-Up> :m-2<CR>
    nnoremap <C-Down> :m+<CR>
    inoremap <C-Up> <Esc>:m-2<CR>
    inoremap <C-Down> <Esc>:m+<CR>


" tab settings
    set tabstop=4
    set expandtab
    set shiftwidth=4


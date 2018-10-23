" Gerardo Torres	https://gerardotorres.xyz/
"   __   _(_)_ __ ___  _ __ ___ 
"   \ \ / / | '_ ` _ \| '__/ __|
"    \ V /| | | | | | | | | (__ 
"   (_)_/ |_|_| |_| |_|_|  \___|


"----- user interface settings -----"

    " syntax highlighting
        colorscheme monokai
    
    " raninbow brackets
        let g:rainbow_active = 1


    " basic number and indentation settings
        set number			
        set autoindent          		
        set smartindent

    " highlight current line w/o underline
        set cursorline
        hi cursorline cterm=none term=none
        highlight CursorLine guibg=#333435 ctermbg=239

"----- key mapping -----"
        
    " open .vimrc with \v key
        noremap <leader>v :e ~/.vimrc<CR> 

    " quickly move lines up/down
        nnoremap <C-Up> :m-2<CR>
        nnoremap <C-Down> :m+<CR>
        inoremap <C-Up> <Esc>:m-2<CR>
        inoremap <C-Down> <Esc>:m+<CR>

"----- file i/o -----"
    
    " file-specific
        filetype indent on

    " return to the same line after reopening a file
        if has("autocmd")
            au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal! g'\"" | endif
        endif

" search settings
    set hlsearch

" tab settings
    set tabstop=4
    set expandtab
    set shiftwidth=4


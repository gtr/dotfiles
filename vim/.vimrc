" Gerardo Torres	https://gerardo.to/


"----- user interface settings -----"

set nocompatible              " be iMproved, required
filetype off                  " required


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

    " raninbow brackets
        let g:rainbow_active = 1

        set t_Co=256   

        syntax on
        colorscheme colt

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

" ---- other ----"

    " search settings
        set hlsearch

    " tab settings
        set tabstop=4
        set expandtab
        set shiftwidth=4



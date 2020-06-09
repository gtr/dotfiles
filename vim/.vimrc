" Gerardo Torres	https://gerardotorres.me/

set nocompatible              " be iMproved, required
filetype off                  " required


filetype plugin indent on    " required

" raninbow brackets
    set t_Co=256   

    syntax on
    colorscheme rza 

    hi Normal guibg=NONE ctermbg=NONE

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
    au BufRead,BufNewFile *.md setlocal textwidth=80

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

" --- nerdtree --- "
    nmap <C-f> :NERDTreeToggle<CR>
    map <C-h> <C-w>h
    map <C-l> <C-w>l

execute pathogen#infect()
call pathogen#helptags()

let g:vim_markdown_folding_disabled = 1

set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar


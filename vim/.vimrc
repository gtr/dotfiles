" Gerardo Torres	https://gerardotorres.me/

" ---- vim pluggins ---- "

    " automatic installation
    if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

    " Plugins will be downloaded under the specified directory.
    call plug#begin('~/.vim/plugged')

    " airline is cool and it looks pretty 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " List ends her2e. Plugins become visible to Vim after this call.
    call plug#end()

"----- user interface settings -----"

    set nocompatible              " be iMproved, required
    filetype off                  " required


    filetype plugin indent on    " required

    " raninbow brackets
    let g:rainbow_active = 1

    syntax on
    set t_Co=256   

    
    " hi Normal guibg=NONE ctermbg=NONE

    " basic number and indentation settings
    set number			
    set autoindent          		
    set smartindent

    " highlight current line w/o underline
    set cursorline
    hi cursorline cterm=none term=none
    highlight CursorLine guibg=#333435 ctermbg=239

    " switch tabs with ctrl-left and ctrl-right
    nnoremap <C-Left> :tabprevious<CR>
    nnoremap <C-Right> :tabnext<CR>

"----- key mapping -----"

    noremap <leader>s i<DEL><space><esc>

    " open .vimrc with \v key
    noremap <leader>v :e! $MYVIMRC<CR> 

    " open rza (colorsheme) with \c key
    noremap <leader>c :e! ~/.vim/colors/rza.vim<CR> 

    " refresh .vimrc with \r key
    noremap <leader>r :source $MYVIMRC<CR>

    " quickly move lines up/down
    nnoremap <C-Up> :m-2<CR>
    nnoremap <C-Down> :m+<CR>
    inoremap <C-Up> <Esc>:m-2<CR>
    inoremap <C-Down> <Esc>:m+<CR>

    " current time
    map <F2> :echo 'Current time is ' . strftime('%c')<CR>

    " format the entire file with \f
    nnoremap <leader>f <Esc>gg gqG<CR>

    " enter a space in normal mode
    nnoremap <space> i<space><esc>

"----- file i/o -----"
    
    " file-specific
    filetype indent on
    au BufRead,BufNewFile *.md setlocal textwidth=80

    " return to the same line after reopening a file
    if has("autocmd")
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
    endif

    " #ivy #otw #soon #come
    autocmd BufNewFile,BufRead *.ivy set syntax=clojure
    autocmd FileType clojure set commentstring=#%s

" ---- other ----"

    " search settings
    set hlsearch

    " tab settings
    set tabstop=4
    set expandtab
    set shiftwidth=4

    " text width
    set tw=80

" --- nerdtree --- "

    " nmap <C-f> :NERDTreeToggle<CR>
    map <C-h> <C-w>h
    map <C-l> <C-w>l

    map <C-f> :call NERDTreeToggleAndRefresh()<CR>

    function NERDTreeToggleAndRefresh()
      :NERDTreeToggle
      if g:NERDTree.IsOpen()
        :NERDTreeRefreshRoot
      endif
    endfunction

" --- remapping --- "

autocmd BufNewFile,BufRead *.lobo,*.ivy set syntax=clojure
autocmd FileType clojure set commentstring=#%s

execute pathogen#infect()
call pathogen#helptags()

let g:vim_markdown_folding_disabled = 1

set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

" insert line without entering insert mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>

let g:airline_theme='violet'
colorscheme rza

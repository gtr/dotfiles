" Maintainer: Alexander Imenes <alexander.imenes@gmail.com>
" Repository: http://github.com/reewr
"
" Note: This file is auto-generated using a script of mine. If you have
"       any complaints about the syntax or readability of this file,
"       please make an issue. You can also see the tool used to create
"       this colourscheme at github.com/reewr/monokai-phoenix-builder

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="monokai-phoenix"

" Below are the colours used for this colourscheme with their fullname
"
" Air Force Blue   GUI: #5F87AF, Term:  67
" Bakers Chocolate GUI: #420E09, Term:  52
" Biscay           GUI: #334455, Term:  59
" Black            GUI: #111111, Term: 233
" Black0           GUI: #000000, Term:  00
" Bokara Grey      GUI: #211F1C, Term:  00
" Carmine          GUI: #960020, Term:  88
" Dark Tangerine   GUI: #FD971F, Term: 208
" DEBUG            GUI: #FF00FF, Term:  13
" DEBUG2           GUI: #FF0000, Term:  09
" Deep Pink        GUI: #F92782, Term: 197
" Eternity         GUI: #2F312B, Term:  22
" Flint            GUI: #75715E, Term:  95
" Heavy Metal      GUI: #49483E, Term:  59
" Jumbo            GUI: #8F908A, Term: 102
" Las Palmas       GUI: #A6E22E, Term: 112
" Light Slate Blue GUI: #AE81FF, Term: 141
" Light Slate Grey GUI: #778899, Term: 103
" Maire            GUI: #222218, Term:  00
" Midnight         GUI: #223344, Term:  23
" Palm Leaf        GUI: #253B22, Term:  22
" Peach Orange     GUI: #9D550F, Term: 130
" Radical Red      GUI: #F92672, Term: 197
" Seal Brown       GUI: #3C1518, Term:  52
" Spellbad         GUI: #F8F8F2, Term:  15
" Spelllocal       GUI: #66D9EF, Term:  81
" Turquoise Blue   GUI: #66D9EF, Term:  81
" Vulcan           GUI: #383A3E, Term: 236
" White            GUI: #F8F8F2, Term:  15
" White Smoke      GUI: #F8F8F8, Term:  15
" Wild Rice        GUI: #E6DB74, Term: 185
" Witch Haze       GUI: #FFE972, Term: 221

" Popup Menu
" --------------------------
hi Pmenu guifg=#F8F8F8 guibg=#223344 gui=NONE ctermfg=15 ctermbg=23 cterm=NONE
hi PmenuSet guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=233 cterm=NONE
hi PmenuSBar guifg=#66D9EF guibg=#334455 gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuSel guifg=#66D9EF guibg=#334455 gui=NONE ctermfg=81 ctermbg=59 cterm=NONE
hi PmenuThumb guifg=#778899 guibg=#778899 gui=NONE ctermfg=103 ctermbg=103 cterm=NONE

" Editor
" --------------------------
hi Normal guifg=#F8F8F2 guibg=#111111 gui=NONE ctermfg=15 ctermbg=233 cterm=NONE
hi Conceal guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=233 cterm=NONE
hi NonText guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#66D9EF guibg=#111111 gui=NONE ctermfg=81 ctermbg=233 cterm=NONE
hi StatusLineNC guifg=#778899 guibg=#111111 gui=NONE ctermfg=103 ctermbg=233 cterm=NONE
hi Search guifg=#000000 guibg=#FFE972 gui=NONE ctermfg=00 ctermbg=221 cterm=NONE
hi VertSplit guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
hi LineNr guifg=#8F908A guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=#211F1C gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Messages
" --------------------------
hi Question guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#111111 guibg=#F92672 gui=NONE ctermfg=233 ctermbg=197 cterm=NONE
hi WarningMsg guifg=#F92672 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE

" Spelling
" --------------------------
hi SpellBad guifg=#F8F8F2 guibg=NONE gui=undercurl ctermfg=15 ctermbg=NONE cterm=undercurl guisp=#F92782
hi SpellLocal guifg=#66D9EF guibg=NONE gui=undercurl ctermfg=81 ctermbg=NONE cterm=undercurl guisp=#66D9EF

" Tabline
" --------------------------
hi TabLine guifg=#8F908A guibg=#111111 gui=NONE ctermfg=102 ctermbg=233 cterm=NONE
hi TabLineSel guifg=#F8F8F2 guibg=#334455 gui=NONE ctermfg=15 ctermbg=59 cterm=NONE
hi TabLineFill guifg=#111111 guibg=#111111 gui=NONE ctermfg=233 ctermbg=233 cterm=NONE

" Misc
" --------------------------
hi SpecialKey guifg=#49483E guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Title guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi Directory guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE

" Diff
" --------------------------
hi DiffAdd guifg=#F8F8F8 guibg=#253B22 gui=NONE ctermfg=15 ctermbg=22 cterm=NONE
hi DiffDelete guifg=#F92672 guibg=#420E09 gui=NONE ctermfg=197 ctermbg=52 cterm=NONE
hi DiffChange guifg=#E6DB74 guibg=#420E09 gui=NONE ctermfg=185 ctermbg=52 cterm=NONE
hi DiffText guifg=#75715E guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE

" Folding
" --------------------------
hi Folded guifg=#778899 guibg=#211F1C gui=NONE ctermfg=103 ctermbg=00 cterm=NONE
hi FoldColumn guifg=NONE guibg=#211F1C gui=NONE ctermfg=NONE ctermbg=00 cterm=NONE

" Cursor colours
" --------------------------
hi ColorColumn guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorColumn guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLine guifg=NONE guibg=#383A3E gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Cursor guifg=#111111 guibg=#F8F8F2 gui=NONE ctermfg=233 ctermbg=15 cterm=NONE
hi Visual guifg=NONE guibg=#49483E gui=NONE ctermfg=NONE ctermbg=59 cterm=NONE
hi MatchParen guifg=#111111 guibg=#E6DB74 gui=NONE ctermfg=233 ctermbg=185 cterm=NONE

if has("nvim")

  " Neovim Terminal
  " --------------------------
  hi TermCursor guifg=#111111 guibg=#F8F8F2 gui=NONE ctermfg=233 ctermbg=15 cterm=NONE
  hi TermCursorNC guifg=#111111 guibg=#778899 gui=NONE ctermfg=233 ctermbg=103 cterm=NONE

endif

" General Highlighting
" --------------------------
hi Constant guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Number guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Float guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Boolean guifg=#AE81FF guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi Character guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi String guifg=#E6DB74 guibg=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi Type guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Structure guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi TypeDef guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Identifier guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi Function guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi Statement guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Operator guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Label guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Keyword guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Preproc guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi Include guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Define guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Macro guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi Special guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Comment guifg=#5F87AF guibg=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Tag guifg=#F92782 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Underlined guifg=#A6E22E guibg=NONE gui=NONE ctermfg=112 ctermbg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Todo guifg=#F8F8F2 guibg=#111111 gui=bold ctermfg=15 ctermbg=233 cterm=bold
hi Error guifg=#F8F8F2 guibg=#960020 gui=NONE ctermfg=15 ctermbg=88 cterm=NONE

function! s:cppMonokaiPhoenixFiletype()
  " vim-cpp-enhanced-highlight syntax
  " --------------------------
  hi cppSTLnamespace guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi cppSTLtype guifg=#66D9EF guibg=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
  hi cppModifier guifg=#F92672 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE

endfunction


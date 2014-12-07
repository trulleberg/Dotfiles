"
" vim 256 color scheme 'rainbo'
"
" This file is in the public domain. Contributions are welcome.
"
" For activation, save this file as ~/.vim/colors/rainbo.vim and add
"
"    syntax on
"    color rainbo
"
" to your ~/.vimrc file.
"
" This color scheme was created by Benjamin Schweizer
"   http://benjamin-schweizer.de/contact
"
" The palette is based on 'Blazin Jell-O Rainbo' by Skyblue2u
"   http://www.colourlovers.com/palette/462628/Blazin_Jell-O_Rainbo
"
" This file is based upon wombat256 by Davia Liang, Lars H. Nielsen, Danila
"   Despalov and Wolfgang Frisch.
"   http://www.vim.org/scripts/script.php?script_id=2465
"

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
    endif

    let colors_name = "rainbo"


    " General colors
    hi Normal   ctermfg=254   ctermbg=233   cterm=none    guifg=#f6f3e8 guibg=#232323 gui=none
    hi Cursor   ctermfg=none  ctermbg=241   cterm=none    guifg=NONE    guibg=#656565 gui=none
    hi Visual   ctermfg=7   ctermbg=238   cterm=none    guifg=#f6f3e8 guibg=#444444 gui=none
    " hi VisualNOS
    hi Search   ctermfg=233   ctermbg=11    cterm=none    guifg=#000000 guibg=#444444 gui=none
    hi Folded   ctermfg=7   ctermbg=238   cterm=none    guifg=#a0a8b0 guibg=#384048 gui=none
    hi Title    ctermfg=7   ctermbg=none  cterm=bold    guifg=#f6f3e8 guibg=NONE    gui=bold
    hi StatusLine ctermfg=7   ctermbg=238   cterm=none    guifg=#f6f3e8 guibg=#444444 gui=italic
    hi VertSplit  ctermfg=238   ctermbg=238   cterm=none    guifg=#444444 guibg=#444444 gui=none
    hi StatusLineNC ctermfg=243   ctermbg=238   cterm=none    guifg=#857b6f guibg=#444444 gui=none
    hi LineNr   ctermfg=243   ctermbg=0   cterm=none    guifg=#857b6f guibg=#000000 gui=none
    hi SpecialKey ctermfg=244   ctermbg=236   cterm=none    guifg=#808080 guibg=#343434 gui=none
    hi NonText    ctermfg=244   ctermbg=0   cterm=none    guifg=#808080 guibg=#000000 gui=none

    " Vim >= 7.0 specific colors
    if version >= 700
      hi CursorLine         ctermbg=236   cterm=none            guibg=#2d2d2d
      hi MatchParen ctermfg=7   ctermbg=243   cterm=bold    guifg=#f6f3e8 guibg=#857b6f gui=bold
      hi Pmenu    ctermfg=7   ctermbg=238           guifg=#f6f3e8 guibg=#444444
      hi PmenuSel   ctermfg=233   ctermbg=11            guifg=#000000 guibg=#cae682
      endif


      " Syntax highlighting
      hi Keyword    ctermfg=44    cterm=none    guifg=#8ac6f2 gui=none
      hi Statement  ctermfg=44    cterm=none    guifg=#8ac6f2 gui=none
      hi Constant   ctermfg=208   cterm=none    guifg=#e5786d gui=none
      hi Number   ctermfg=208   cterm=none    guifg=#e5786d gui=none
      hi PreProc    ctermfg=208   cterm=none    guifg=#e5786d gui=none
      hi Function   ctermfg=11    cterm=none    guifg=#cae682 gui=none
      hi Identifier ctermfg=11    cterm=none    guifg=#cae682 gui=none
      hi Type     ctermfg=11    cterm=none    guifg=#cae682 gui=none
      hi Special    ctermfg=194   cterm=none    guifg=#e7f6da gui=none
      hi String   ctermfg=41    cterm=none    guifg=#95e454 gui=italic
      hi Comment    ctermfg=246   cterm=none    guifg=#99968b gui=italic
      hi Todo     ctermfg=245   cterm=none    guifg=#8f8f8f gui=italic


      " Links
      hi! link FoldColumn   Folded
      hi! link CursorColumn CursorLine

      " diff
      hi DiffAdd    ctermfg=254   ctermbg=130
      hi DiffChange ctermfg=254   ctermbg=130
      hi DiffDelete ctermfg=233   ctermbg=130
      hi DiffText   ctermfg=254   ctermbg=208

      " vim:set ts=4 sw=4 noet:


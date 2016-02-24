" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "darkblue.trois"

"hi Normal	ctermfg=white ctermbg=black
hi Normal	ctermfg=white 
hi ErrorMsg	ctermfg=white ctermbg=lightblue
hi Visual	ctermfg=blue ctermbg=fg cterm=reverse
hi VisualNOS	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo		ctermfg=red ctermbg=none cterm=bold
hi Search	ctermfg=white ctermbg=darkblue cterm=underline term=underline
"hi IncSearch	ctermfg=darkblue ctermbg=7
hi IncSearch	ctermfg=darkblue ctermbg=darkgray

hi SpecialKey	ctermfg=darkcyan
hi Directory	ctermfg=cyan
hi Title	ctermfg=magenta cterm=bold
hi WarningMsg	ctermfg=red
hi WildMenu	ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg	ctermfg=lightblue
hi MoreMsg	ctermfg=darkgreen ctermfg=darkgreen
hi Question	ctermfg=green cterm=none
hi NonText	ctermfg=darkblue

"hi StatusLine	ctermfg=black ctermbg=8 term=none cterm=none
hi StatusLine	ctermfg=black ctermbg=darkgray term=none cterm=none
"hi StatusLineNC	ctermfg=black ctermbg=7 term=none cterm=none
hi StatusLineNC	ctermfg=black ctermbg=darkgray term=none cterm=none
"hi VertSplit	ctermfg=black ctermbg=7 term=none cterm=none
hi VertSplit	ctermfg=black ctermbg=darkgray term=none cterm=none

"hi Folded	ctermfg=8 ctermbg=black cterm=bold term=bold
"hi FoldColumn	ctermfg=8 ctermbg=black cterm=bold term=bold
"hi LineNr	ctermfg=8 cterm=none

hi DiffAdd	ctermbg=darkblue term=none cterm=none
hi DiffChange	ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan
hi DiffText	cterm=bold ctermbg=red

hi Cursor	ctermfg=black ctermbg=yellow
hi lCursor	ctermfg=black ctermbg=white

hi Comment	ctermfg=darkred
hi Constant	ctermfg=magenta cterm=none
hi Special	ctermfg=brown cterm=none
hi Identifier	ctermfg=cyan cterm=none
hi Statement	ctermfg=yellow cterm=none
hi PreProc	ctermfg=magenta cterm=none
hi type		ctermfg=green cterm=none
hi Underlined	cterm=underline term=underline
"hi Ignore	ctermfg=bg

hi javaCommentTitle ctermfg=darkred
"hi javaCommentStar  ctermfg=darkred
"hi javaDocComment   ctermfg=darkred

" paren visibility fix
hi MatchParen   ctermfg=black ctermbg=blue

" tab line
hi TabLine      cterm=none ctermfg=white ctermbg=darkblue
hi TabLineFill  cterm=none ctermfg=white ctermbg=blue
"hi TabLineSel   cterm=bold ctermfg=white ctermbg=black

" suggested by tigmoid, 2008 Jul 19
"hi Pmenu guifg=#c0c0c0 guibg=#404080
"hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
"hi PmenuSbar guifg=blue guibg=dark7
"hi PmenuThumb guifg=#c0c0c0

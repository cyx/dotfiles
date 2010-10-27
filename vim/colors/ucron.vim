if exists("syntax_on")
  syntax reset
endif

set t_Co=256
highlight Normal ctermfg=White ctermbg=Black
highlight Number ctermfg=White ctermbg=Black
highlight LineNr ctermfg=DarkGray ctermbg=Black
highlight Folded ctermfg=DarkBlue ctermbg=Black
highlight Keyword ctermfg=5
highlight Define ctermfg=Brown
highlight Comment ctermfg=Gray
highlight Type ctermfg=6
highlight rubySymbol ctermfg=Brown
highlight Identifier ctermfg=Yellow
highlight rubyClassVariable ctermfg=66
highlight rubyStringDelimiter ctermfg=DarkGreen
highlight rubyInstanceVariable ctermfg=66
highlight rubyInterpolation ctermfg=White
highlight rubyPseudoVariable ctermfg=66

hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type

highlight Constant ctermfg=228
highlight Function ctermfg=DarkRed
highlight Include ctermfg=DarkRed
highlight Statement ctermfg=DarkRed
highlight String ctermfg=DarkGreen
highlight Search ctermbg=White
highlight Todo ctermbg=Black ctermfg=Yellow
highlight Title ctermbg=Black ctermfg=Yellow
highlight ModeMsg ctermfg=white ctermbg=DarkGreen
highlight NonText ctermfg=DarkGray ctermbg=Black
highlight Visual ctermfg=Gray ctermbg=DarkRed
highlight TabLine cterm=bold ctermfg=Black ctermbg=Gray
highlight TabLineFill cterm=bold ctermfg=Black ctermbg=DarkGray
highlight TabLineSel cterm=NONE ctermfg=White ctermbg=DarkRed
highlight StatusLine ctermfg=Gray ctermbg=Black
highlight StatusLineNC ctermfg=DarkGray ctermbg=Black
highlight CursorLine cterm=NONE  ctermbg=NONE
highlight MatchParen ctermbg=Black ctermfg=DarkYellow
" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2010-07-23
"
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)

set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "wombat256"

" General colors
hi Normal		ctermfg=252		ctermbg=233		cterm=none		guifg=#e3e0d7	guibg=#191919	gui=none
hi Cursor		ctermfg=234		ctermbg=none	cterm=none		guifg=#242424	guibg=#eae788	gui=none
hi Visual		ctermfg=none	ctermbg=236		cterm=none		guifg=#c3c6ca	guibg=#554d4b	gui=none
hi VisualNOS	ctermfg=251		ctermbg=none	cterm=none		guifg=#c3c6ca	guibg=#303030	gui=none
hi Search		ctermfg=45		ctermbg=236 	cterm=none		guifg=#d787ff	guibg=#636066	gui=none
hi Folded		ctermfg=103		ctermbg=236		cterm=none		guifg=#a0a8b0	guibg=#3a4046	gui=none
hi Title		ctermfg=230						cterm=bold		guifg=#ffffd7					gui=bold
hi StatusLine	ctermfg=230		ctermbg=none	cterm=none		guifg=#ffffd7	guibg=#444444	gui=italic
hi VertSplit	ctermfg=235		ctermbg=none	cterm=none		guifg=#262626	guibg=#242424	gui=none
hi StatusLineNC	ctermfg=241		ctermbg=none	cterm=none		guifg=#857b6f	guibg=#444444	gui=none
hi LineNr		ctermfg=239		ctermbg=none	cterm=none		guifg=#525252	guibg=#191919	gui=none
hi CursorLineNr	ctermfg=242		ctermbg=none	cterm=none		guifg=#c5bbaf	guibg=#282828	gui=none
hi SpecialKey	ctermfg=242		ctermbg=none	cterm=none		guifg=#626262	guibg=#242424	gui=none
hi WarningMsg	ctermfg=203										guifg=#ff5f55
hi ErrorMsg		ctermfg=196		ctermbg=none	cterm=bold		guifg=#ff2026	guibg=#3a3a3a	gui=bold

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine					ctermbg=234		cterm=none						guibg=#242424
hi MatchParen	ctermfg=228		ctermbg=235		cterm=none		guifg=#eae788	guibg=#857b6f	gui=none
hi Pmenu		ctermfg=240		ctermbg=236						guifg=#ffffd7	guibg=#444444
hi PmenuSel		ctermfg=221		ctermbg=237						guifg=#080808	guibg=#cae982
endif

" Diff highlighting
hi DiffAdd						ctermbg=17										guibg=#2a0d6a
hi DiffDelete	ctermfg=234		ctermbg=60		cterm=none		guifg=#242424	guibg=#3e3969	gui=none
hi DiffText						ctermbg=53		cterm=none						guibg=#73186e	gui=none
hi DiffChange					ctermbg=237										guibg=#382a37

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword		ctermfg=111		cterm=bold		guifg=#88b8f6	gui=bold
hi Statement	ctermfg=111		cterm=none		guifg=#88b8f6	gui=none
hi Constant		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Number		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi PreProc		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Function		ctermfg=192		cterm=bold		guifg=#cae982	gui=bold
hi Identifier	ctermfg=192		cterm=none		guifg=#cae982	gui=none
hi Type			ctermfg=186		cterm=none		guifg=#d4d987	gui=none
hi Special		ctermfg=186		cterm=none		guifg=#eadead	gui=none
hi String		ctermfg=113		cterm=none		guifg=#95e454	gui=italic
hi Comment		ctermfg=241		cterm=none		guifg=#9c998e	gui=italic
hi Todo			ctermfg=101		cterm=none		guifg=#857b6f	gui=italic
hi Define		ctermfg=173		cterm=bold
hi Boolean		ctermfg=173		cterm=bold


" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link NonText		LineNr

" vim:set ts=4 sw=4 noet:

" office-light, a vim colourscheme by nightsense
"
" generated with a theme template adapted from
" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)


"=== SET VARIABLES ============================================================

" GUI colours
let s:g0 = 'fffdf5'
let s:g1 = 'e0dfd7'
let s:g2 = 'bfbcb0'
let s:g3 = '949288'
let s:g4 = '75736c'
let s:g5 = '54534d'
let s:g6 = '403f3b'
let s:g7 = '2b2b28'
let s:g8 = 'eb3a3a'
let s:g9 = 'e06812'
let s:gA = 'e0bf38'
let s:gB = '25942e'
let s:gC = '0c9489'
let s:gD = '3083bf'
let s:gE = '8760bf'
let s:gF = 'e05e85'

" terminal colours
let s:t0 = '00'
let s:t3 = '08'
let s:t5 = '07'
let s:t7 = '15'
let s:t8 = '01'
let s:tA = '03'
let s:tB = '02'
let s:tC = '06'
let s:tD = '04'
let s:tE = '05'
let s:t1 = '10'
let s:t2 = '11'
let s:t4 = '12'
let s:t6 = '13'
let s:t9 = '09'
let s:tF = '14'

" neovim colours
if has('nvim')
  let g:terminal_color_0 =  '#fffdf5'
  let g:terminal_color_1 =  '#eb3a3a'
  let g:terminal_color_2 =  '#25942e'
  let g:terminal_color_3 =  '#e0bf38'
  let g:terminal_color_4 =  '#3083bf'
  let g:terminal_color_5 =  '#8760bf'
  let g:terminal_color_6 =  '#0c9489'
  let g:terminal_color_7 =  '#54534d'
  let g:terminal_color_8 =  '#949288'
  let g:terminal_color_9 =  '#e06812'
  let g:terminal_color_10 = '#e0dfd7'
  let g:terminal_color_11 = '#bfbcb0'
  let g:terminal_color_12 = '#75736c'
  let g:terminal_color_13 = '#403f3b'
  let g:terminal_color_14 = '#e05e85'
  let g:terminal_color_15 = '#2b2b28'
endif


"=== GENERAL PREPARATION ======================================================

" run theme-setting script if using terminal vim
if !has('gui_running')
  execute 'silent !/bin/sh $HOME/.nightshell/office-light'
  autocmd CursorMoved * execute 'if !exists("colors_name") |
        \ let colors_name = "office-light" |
        \ colorscheme office-light | endif'
endif

" clear old theme, activate new
hi clear
syntax reset
let colors_name = 'office-light'

" highlighting function
fun! <sid>h(x, gf, gb, cf, cb, a, s)
  if a:gf != '' | exe 'hi ' . a:x . ' guifg=#'  . a:gf                  | endif
  if a:gb != '' | exe 'hi ' . a:x . ' guibg=#'  . a:gb                  | endif
  if a:cf != '' | exe 'hi ' . a:x . ' ctermfg=' . a:cf                  | endif
  if a:cb != '' | exe 'hi ' . a:x . ' ctermbg=' . a:cb                  | endif
  if a:a  != '' | exe 'hi ' . a:x . ' gui='     . a:a . ' cterm=' . a:a | endif
  if a:s  != '' | exe 'hi ' . a:x . ' guisp=#'  . a:s                   | endif
endfun


"=== BASIC HIGHLIGHTING =======================================================

" cursor + status line + selected tab
cal <sid>h('Cursor'           , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
cal <sid>h('StatusLine'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
cal <sid>h('StatusLineTerm'   , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
cal <sid>h('TabLineSel'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )
cal <sid>h('TermCursor'       , s:g0 , s:g4 , s:t0 , s:t4 , 'none'      , ''  )

" line numbers
cal <sid>h('CursorLineNr'     , s:g0 , s:g3 , s:t0 , s:t3 , 'none'      , ''  )
cal <sid>h('LineNr'           , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

" basic text
cal <sid>h('Bold'             , ''   , ''   , ''   , ''   , 'bold'      , ''  )
cal <sid>h('Directory'        , s:g5 , ''   , s:t5 , ''   , 'bold'      , ''  )
cal <sid>h('Italic'           , ''   , ''   , ''   , ''   , 'italic'    , ''  )
cal <sid>h('Normal'           , s:g5 , s:g0 , s:t5 , s:t0 , 'none'      , ''  )
cal <sid>h('Underlined'       , s:g5 , ''   , s:t5 , ''   , 'underline' , ''  )

" commented-out text
cal <sid>h('Comment'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
cal <sid>h('Conceal'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
cal <sid>h('EndOfBuffer'      , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
cal <sid>h('Ignore'           , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )
cal <sid>h('NonText'          , s:g3 , ''   , s:t3 , ''   , 'none'      , ''  )

" highlighted background
cal <sid>h('ColorColumn'      , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
cal <sid>h('CursorColumn'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
cal <sid>h('CursorLine'       , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
cal <sid>h('QuickFixLine'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
cal <sid>h('StatusLineNC'     , s:g5 , s:g1 , s:t5 , s:t1 , 'none'      , ''  )
cal <sid>h('StatusLineTermNC' , s:g5 , s:g1 , s:t5 , s:t1 , 'none'      , ''  )
cal <sid>h('TabLineFill'      , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )
cal <sid>h('TermCursorNC'     , ''   , s:g1 , ''   , s:t1 , 'none'      , ''  )

" muted text on highlighted background
cal <sid>h('DiffChange'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
cal <sid>h('FoldColumn'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
cal <sid>h('Folded'           , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
cal <sid>h('SignColumn'       , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
cal <sid>h('TabLine'          , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )
cal <sid>h('VisualNOS'        , s:g4 , s:g1 , s:t4 , s:t1 , 'none'      , ''  )

" strongly highlighted background
cal <sid>h('MatchParen'       , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )
cal <sid>h('Pmenu'            , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )
cal <sid>h('Visual'           , s:g6 , s:g2 , s:t6 , s:t2 , 'none'      , ''  )

" selected menu item
cal <sid>h('PmenuSel'         , s:g0 , s:g5 , s:t0 , s:t5 , 'none'      , ''  )
cal <sid>h('WildMenu'         , s:g0 , s:g6 , s:t0 , s:t6 , 'none'      , ''  )

" solid lines
cal <sid>h('PmenuSbar'        , s:g1 , s:g1 , s:t1 , s:t1 , 'none'      , ''  )
cal <sid>h('PmenuThumb'       , s:g4 , s:g4 , s:t4 , s:t4 , 'none'      , ''  )
cal <sid>h('VertSplit'        , s:g2 , s:g2 , s:t2 , s:t2 , 'none'      , ''  )


"=== SYNTAX HIGHLIGHTING ======================================================

" RED for warning elements
cal <sid>h('DiffDelete'       , s:g0 , s:g8 , s:t0 , s:t8 , 'none'      , ''  )
cal <sid>h('Error'            , s:g0 , s:g8 , s:t0 , s:t8 , 'none'      , ''  )
cal <sid>h('ErrorMsg'         , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )
cal <sid>h('SpellBad'         , ''   , ''   , s:t8 , s:t0 , 'undercurl' , s:g8)
cal <sid>h('TooLong'          , s:g8 , ''   , s:t8 , ''   , ''          , ''  )
cal <sid>h('WarningMsg'       , s:g8 , s:g0 , s:t8 , s:t0 , 'none'      , ''  )

" ORANGE for preliminary elements
cal <sid>h('Define'           , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
cal <sid>h('IncSearch'        , s:g0 , s:g9 , s:t0 , s:t9 , 'none'      , ''  )
cal <sid>h('Include'          , s:g9 , ''   , s:t9 , ''   , ''          , ''  )
cal <sid>h('Macro'            , s:g9 , ''   , s:t9 , ''   , ''          , ''  )
cal <sid>h('PreCondit'        , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
cal <sid>h('PreProc'          , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )
cal <sid>h('SpellCap'         , ''   , ''   , s:t9 , s:t0 , 'undercurl' , s:g9)
cal <sid>h('Title'            , s:g9 , ''   , s:t9 , ''   , 'none'      , ''  )

" YELLOW for highlighted elements
cal <sid>h('DiffText'         , s:g7 , s:gA , s:t7 , s:tA , 'none'      , ''  )
cal <sid>h('Search'           , s:g7 , s:gA , s:t7 , s:tA , 'none'      , ''  )
cal <sid>h('Todo'             , s:g7 , s:gA , s:t7 , s:tA , 'none'      , ''  )

" GREEN for action elements
cal <sid>h('Conditional'      , s:gB , ''   , s:tB , ''   , ''          , ''  )
cal <sid>h('DiffAdd'          , s:g0 , s:gB , s:tB , s:t0 , 'none'      , ''  )
cal <sid>h('Exception'        , s:gB , ''   , s:tB , ''   , ''          , ''  )
cal <sid>h('Keyword'          , s:gB , ''   , s:tB , ''   , ''          , ''  )
cal <sid>h('Label'            , s:gB , ''   , s:tB , ''   , ''          , ''  )
cal <sid>h('ModeMsg'          , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
cal <sid>h('MoreMsg'          , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
cal <sid>h('Operator'         , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
cal <sid>h('Question'         , s:gB , ''   , s:tB , ''   , 'none'      , ''  )
cal <sid>h('Repeat'           , s:gB , ''   , s:tB , ''   , ''          , ''  )
cal <sid>h('Statement'        , s:gB , ''   , s:tB , ''   , 'none'      , ''  )

" TEAL for object types
cal <sid>h('SpellLocal'       , ''   , ''   , s:tC , s:t0 , 'undercurl' , s:gC)
cal <sid>h('Type'             , s:gC , ''   , s:tC , ''   , 'none'      , ''  )
cal <sid>h('StorageClass'     , s:gC , ''   , s:tC , ''   , ''          , ''  )
cal <sid>h('Structure'        , s:gC , ''   , s:tC , ''   , ''          , ''  )
cal <sid>h('Typedef'          , s:gC , ''   , s:tC , ''   , ''          , ''  )

" BLUE for constants
cal <sid>h('Boolean'          , s:gD , ''   , s:tD , ''   , ''          , ''  )
cal <sid>h('Character'        , s:gD , ''   , s:tD , ''   , ''          , ''  )
cal <sid>h('Constant'         , s:gD , ''   , s:tD , ''   , 'none'      , ''  )
cal <sid>h('Float'            , s:gD , ''   , s:tD , ''   , ''          , ''  )
cal <sid>h('Number'           , s:gD , ''   , s:tD , ''   , ''          , ''  )
cal <sid>h('String'           , s:gD , ''   , s:tD , ''   , ''          , ''  )

" PURPLE for special text
cal <sid>h('Debug'            , s:gE , ''   , s:tE , ''   , ''          , ''  )
cal <sid>h('Delimiter'        , s:gE , ''   , s:tE , ''   , ''          , ''  )
cal <sid>h('Special'          , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
cal <sid>h('SpecialChar'      , s:gE , ''   , s:tE , ''   , ''          , ''  )
cal <sid>h('SpecialComment'   , s:gE , ''   , s:tE , ''   , ''          , ''  )
cal <sid>h('SpecialKey'       , s:gE , ''   , s:tE , ''   , 'none'      , ''  )
cal <sid>h('SpellRare'        , ''   , ''   , s:tE , s:t0 , 'undercurl' , s:gE)
cal <sid>h('Tag'              , s:gE , ''   , s:tE , ''   , ''          , ''  )

" PINK for object names
cal <sid>h('Function'         , s:gF , ''   , s:tF , ''   , ''          , ''  )
cal <sid>h('Identifier'       , s:gF , ''   , s:tF , ''   , 'none'      , ''  )
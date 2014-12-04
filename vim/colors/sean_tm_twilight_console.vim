" This scheme was created by CSApproxSnapshot
" on Wed, 08 Feb 2012

hi clear
if exists("syntax_on")
    syntax reset
endif

" TODO 

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif   has("gui_running") || &t_Co == 256
  CSAHi   Normal                         term=NONE             cterm=NONE             ctermbg=234   ctermfg=255   gui=NONE                  guibg=#202020        guifg=#f5f5f5
  CSAHi   erubyDelimiter                 term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   erubyComment                   term=italic           cterm=italic           ctermbg=bg    ctermfg=239   gui=italic                guibg=bg             guifg=#504c51
  CSAHi   erubyRailsMethod               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   htmlArg                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=137   gui=NONE                  guibg=bg             guifg=#ac885b
  CSAHi   htmlSpecialChar                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   javaScriptRailsFunction        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   javaScriptBraces               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   yamlKey                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   cssIdentifier                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   pythonFunction                 term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cssTagName                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cssPseudoClass                 term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptFunction             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=228   gui=NONE                  guibg=bg             guifg=#f9ee98
  CSAHi   javaScriptConditional          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptRepeat               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   htmlTag                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=137   gui=NONE                  guibg=bg             guifg=#ac885b
  CSAHi   javaScriptMember               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptParens               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   PreProc                        term=underline        cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   Type                           term=underline        cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   Underlined                     term=underline        cterm=underline        ctermbg=bg    ctermfg=fg    gui=underline             guibg=bg             guifg=fg
  CSAHi   Ignore                         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=234   gui=NONE                  guibg=bg             guifg=bg
  CSAHi   Error                          term=reverse          cterm=NONE             ctermbg=196   ctermfg=231   gui=NONE                  guibg=Red            guifg=White
  CSAHi   Todo                           term=NONE             cterm=bold             ctermbg=239   ctermfg=234   gui=reverse,bold,italic   guibg=bg             guifg=#504c51
  CSAHi   String                         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=107   gui=NONE                  guibg=bg             guifg=#8f9d6a
  CSAHi   Character                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   Number                         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   Boolean                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   zshCommands                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   htmlTagName                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=137   gui=NONE                  guibg=bg             guifg=#ac885b
  CSAHi   htmlEndTag                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=137   gui=NONE                  guibg=bg             guifg=#ac885b
  CSAHi   Define                         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   htmlTitle                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   diffAdded                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   SpecialKey                     term=bold             cterm=NONE             ctermbg=12    ctermfg=238   gui=NONE                  guibg=#092137        guifg=#494949
  CSAHi   NonText                        term=bold             cterm=NONE             ctermbg=234   ctermfg=234   gui=NONE                  guibg=bg             guifg=bg
  CSAHi   Directory                      term=bold             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   ErrorMsg                       term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   IncSearch                      term=reverse          cterm=NONE             ctermbg=124   ctermfg=231   gui=italic                guibg=#b00000        guifg=#ffffff
  CSAHi   Search                         term=reverse          cterm=NONE             ctermbg=52    ctermfg=231   gui=italic                guibg=#660D11        guifg=#ffffff
  CSAHi   MoreMsg                        term=bold             cterm=bold             ctermbg=bg    ctermfg=29    gui=bold                  guibg=bg             guifg=SeaGreen
  CSAHi   ModeMsg                        term=bold             cterm=bold             ctermbg=bg    ctermfg=fg    gui=bold                  guibg=bg             guifg=fg
  CSAHi   LineNr                         term=underline        cterm=bold             ctermbg=234   ctermfg=237   gui=bold,italic           guibg=bg             guifg=#3F3F3F
  CSAHi   IndentGuidesEven               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   rubyRepeat                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   rubyFunction                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   rubyBlockParameter             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   rubyInstanceVariable           term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   htmlSpecialTagName             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   rubyRegexp                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#e9c062
  CSAHi   rubyClass                      term=NONE             cterm=bold             ctermbg=bg    ctermfg=179   gui=bold                  guibg=bg             guifg=#cda869
  CSAHi   rubyEscape                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   IndentGuidesOdd                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   vimCommand                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cType                          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cStorageClass                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cConditional                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   cRepeat                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   SpellLocal                     term=underline        cterm=undercurl        ctermbg=bg    ctermfg=fg   gui=undercurl             guibg=bg             guifg=fg          guisp=orange
  CSAHi   Pmenu                          term=NONE             cterm=NONE             ctermbg=16    ctermfg=95    gui=italic                guibg=#000000        guifg=#9b703f
  CSAHi   PmenuSel                       term=NONE             cterm=bold             ctermbg=26    ctermfg=fg    gui=bold,italic           guibg=#0051d4        guifg=fg
  CSAHi   PmenuSbar                      term=NONE             cterm=NONE             ctermbg=250   ctermfg=fg    gui=NONE                  guibg=Grey           guifg=fg
  CSAHi   PmenuThumb                     term=NONE             cterm=NONE             ctermbg=255   ctermfg=234   gui=reverse               guibg=bg             guifg=fg
  CSAHi   TabLine                        term=underline        cterm=underline        ctermbg=252   ctermfg=fg    gui=underline             guibg=LightGrey      guifg=fg
  CSAHi   TabLineSel                     term=bold             cterm=bold             ctermbg=bg    ctermfg=fg    gui=bold                  guibg=bg             guifg=fg
  CSAHi   TabLineFill                    term=reverse          cterm=NONE             ctermbg=255   ctermfg=234   gui=reverse               guibg=bg             guifg=fg
  CSAHi   CursorColumn                   term=reverse          cterm=NONE             ctermbg=12    ctermfg=fg    gui=NONE                  guibg=#092137        guifg=fg
  CSAHi   CursorLine                     term=underline        cterm=NONE             ctermbg=0    ctermfg=NONE    gui=NONE                  guibg=#0B2F4F        guifg=NONE
  CSAHi   yamlAnchor                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   cssClassName                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   yamlDocumentHeader             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=107   gui=NONE                  guibg=bg             guifg=#8f9d6a
  CSAHi   CtrlPMatch                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=italic                guibg=bg             guifg=fg
  CSAHi   cssURL                         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   cssFunctionName                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   yamlAlias                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   cssPseudoClassId               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   cssValueLength                 term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   cssCommonAttr                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   cssBraces                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptBrackets             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptBlocks               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptLabel                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   hamlTag                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   hamlAttributesDelimiter        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   sassClass                      term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeStatement                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   javaScriptNumber               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeBracket                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeParen                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   Float                          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   Function                       term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   Conditional                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   Label                          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=107   gui=NONE                  guibg=bg             guifg=#8f9d6a
  CSAHi   Operator                       term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   Keyword                        term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   Question                       term=NONE             cterm=bold             ctermbg=bg    ctermfg=29    gui=bold                  guibg=bg             guifg=SeaGreen
  CSAHi   StatusLine                     term=italic,bold           cterm=bold             ctermbg=237    ctermfg=231   gui=italic                guibg=#92432E        guifg=#ffffff
  CSAHi   StatusLineNC                   term=reverse          cterm=NONE             ctermbg=237   ctermfg=231   gui=italic                guibg=#393939        guifg=#f8f8f8
  CSAHi   VertSplit                      term=reverse          cterm=NONE             ctermbg=237   ctermfg=237   gui=NONE                  guibg=#393939        guifg=#393939
  CSAHi   Title                          term=bold             cterm=bold             ctermbg=bg    ctermfg=231   gui=bold                  guibg=bg             guifg=#f8f8f8
  CSAHi   Visual                         term=reverse          cterm=NONE             ctermbg=26    ctermfg=fg    gui=NONE                  guibg=#0051d4        guifg=NONE
  CSAHi   VisualNOS                      term=bold,underline   cterm=bold,underline   ctermbg=bg    ctermfg=fg    gui=bold,underline        guibg=bg             guifg=fg
  CSAHi   WarningMsg                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   WildMenu                       term=NONE             cterm=NONE             ctermbg=226   ctermfg=16    gui=NONE                  guibg=Yellow         guifg=Black
  CSAHi   Folded                         term=NONE             cterm=bold             ctermbg=16    ctermfg=239   gui=bold                  guibg=#000000        guifg=#504c51
  CSAHi   rubyGlobalVariable             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   cssColor                       term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   rubyRegexpDelimiter            term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#e9c062
  CSAHi   rubyClassVariable              term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   rubyOperator                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   rubyException                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   rubyPseudoVariable             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#7587a6
  CSAHi   rubyRailsUserClass             term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#9b859d
  CSAHi   rubyRailsARAssociationMethod   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   rubyRailsARMethod              term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   rubyControl                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   pythonInclude                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   pythonStatement                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   pythonConditional              term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   rubySymbol                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   rubyConstant                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=103   gui=NONE                  guibg=bg             guifg=#9b859d
  CSAHi   rubyAttribute                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   rubyInclude                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   rubyStringDelimiter            term=NONE             cterm=NONE             ctermbg=bg    ctermfg=107   gui=NONE                  guibg=bg             guifg=#8f9d6a
  CSAHi   rubyInterpolationDelimiter     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   ColorColumn                    term=reverse          cterm=NONE             ctermbg=217   ctermfg=fg    gui=NONE                  guibg=LightRed       guifg=fg
  CSAHi   Cursor                         term=NONE             cterm=NONE             ctermbg=26    ctermfg=231   gui=NONE                  guibg=#0052D5        guifg=#ffffff
  CSAHi   lCursor                        term=NONE             cterm=NONE             ctermbg=255   ctermfg=234   gui=NONE                  guibg=fg             guifg=bg
  CSAHi   MatchParen                     term=reverse          cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   Comment                        term=italic           cterm=italic           ctermbg=bg    ctermfg=242   gui=italic                guibg=bg             guifg=#696969
  CSAHi   Constant                       term=underline        cterm=NONE             ctermbg=bg    ctermfg=167   gui=NONE                  guibg=bg             guifg=#cf6a4c
  CSAHi   Special                        term=bold             cterm=NONE             ctermbg=bg    ctermfg=231   gui=NONE                  guibg=bg             guifg=#f8f8f8
  CSAHi   Identifier                     term=underline        cterm=NONE             ctermbg=bg    ctermfg=228   gui=NONE                  guibg=bg             guifg=#f9ee98
  CSAHi   Statement                      term=bold             cterm=NONE             ctermbg=bg    ctermfg=179   gui=NONE                  guibg=bg             guifg=#cda869
  CSAHi   CtrlPPrtCursor                 term=NONE             cterm=bold             ctermbg=bg    ctermfg=fg    gui=bold                  guibg=bg             guifg=fg
  CSAHi   CtrlPPrtText                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=231   gui=NONE                  guibg=bg             guifg=#ffffff
  CSAHi   rubyConditional                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeRepeat                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeKeyword                  term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeSpecialVar               term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   zshKeyword                     term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   coffeeConditional              term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   diffRemoved                    term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   gitcommitUntrackedFile         term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   gitcommitSelectedFile          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=fg    gui=NONE                  guibg=bg             guifg=fg
  CSAHi   StorageClass                   term=NONE             cterm=NONE             ctermbg=bg    ctermfg=228   gui=NONE                  guibg=bg             guifg=#f9ee98
  CSAHi   Tag                            term=NONE             cterm=NONE             ctermbg=bg    ctermfg=95    gui=NONE                  guibg=bg             guifg=#9b703f
  CSAHi   FoldColumn                     term=NONE             cterm=NONE             ctermbg=16    ctermfg=244   gui=NONE                  guibg=#000000        guifg=#828282
  CSAHi   DiffAdd                        term=bold             cterm=NONE             ctermbg=152   ctermfg=fg    gui=NONE                  guibg=LightBlue      guifg=fg
  CSAHi   DiffChange                     term=bold             cterm=NONE             ctermbg=219   ctermfg=fg    gui=NONE                  guibg=LightMagenta   guifg=fg
  CSAHi   DiffDelete                     term=bold             cterm=bold             ctermbg=195   ctermfg=21    gui=bold                  guibg=LightCyan      guifg=Blue
  CSAHi   DiffText                       term=reverse          cterm=bold             ctermbg=196   ctermfg=fg    gui=bold                  guibg=Red            guifg=fg
  CSAHi   SignColumn                     term=NONE             cterm=NONE             ctermbg=250   ctermfg=18    gui=NONE                  guibg=Grey           guifg=DarkBlue
  CSAHi   Conceal                        term=NONE             cterm=NONE             ctermbg=248   ctermfg=252   gui=NONE                  guibg=DarkGrey       guifg=LightGrey
  CSAHi   SpellBad                       term=underline        cterm=undercurl        ctermbg=bg    ctermfg=167   gui=undercurl             guibg=bg             guifg=fg          guisp=red
  CSAHi   SpellCap                       term=underline        cterm=undercurl        ctermbg=bg    ctermfg=167   gui=undercurl             guibg=bg             guifg=fg          guisp=yellow
  CSAHi   SpellRare                      term=underline        cterm=undercurl        ctermbg=bg    ctermfg=167    gui=undercurl             guibg=bg             guifg=fg          guisp=blue
  CSAHi   rubyRailsRenderMethod          term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
  CSAHi   rubyRailsMethod                term=NONE             cterm=NONE             ctermbg=bg    ctermfg=186   gui=NONE                  guibg=bg             guifg=#dad085
endif

if 1
    delcommand CSAHi
endif

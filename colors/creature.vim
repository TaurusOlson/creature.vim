"
" MM'""""'YMM                              dP                              
" M' .mmm. `M                              88                              
" M  MMMMMooM 88d888b. .d8888b. .d8888b. d8888P dP    dP 88d888b. .d8888b. 
" M  MMMMMMMM 88'  `88 88ooood8 88'  `88   88   88    88 88'  `88 88ooood8 
" M. `MMM' .M 88       88.  ... 88.  .88   88   88.  .88 88       88.  ... 
" MM.     .dM dP       `88888P' `88888P8   dP   `88888P' dP       `88888P' 
" MMMMMMMMMMM                                                              
"
"
" Author: Taurus Olson <taurusolson@gmail.com>

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="creature"

" Colors
let s:creature_orange     = "#FF7A2A"
let s:creature_black      = "#191814"
let s:creature_white      = "#D6EDE7"
let s:creature_blue       = "#44AECF"
let s:creature_grey       = "#777777"
let s:creature_dark_grey  = "#555555"
let s:creature_light_grey = "#4C4745"
let s:creature_brown      = "#262626"
let s:creature_red        = "#EB3443"
let s:creature_purple     = "#AE81FF"
let s:creature_kaki       = "#716453"


function! Colorize(group, fg, bg, gui)
    exe "hi " .a:group. " guifg=" .a:fg. " guibg=".a:bg. " gui="a:gui
endfunction


call Colorize("Character"   , s:creature_orange , "NONE"    , "none")
call Colorize("String"      , s:creature_kaki   , "NONE"    , "none")
call Colorize("Boolean"     , "#AE81FF"         , "NONE"    , "none")
call Colorize("Number"      , s:creature_purple , "NONE"    , "none")
call Colorize("Conditional" , s:creature_orange , "NONE"    , "bold")
call Colorize("Constant"    , "#AE81FF"         , "NONE"    , "bold")
call Colorize("Cursor"      , "#000000"         , "#F8F8F0" , "bold")
call Colorize("Debug"       , "#BCA3A3"         , "NONE"    , "bold")
call Colorize("Define"      , s:creature_blue   , "NONE"    , "bold")
call Colorize("Delimiter"   , "#8F8F8F"         , "NONE"    , "bold")


" Msg {{{1
call Colorize("ErrorMsg" , s:creature_orange   , "#232526" , "bold")
call Colorize("ModeMsg"  , s:creature_orange , "NONE"    , "none")
call Colorize("MoreMsg"  , s:creature_orange , "NONE"    , "none")


" Diff {{{1
call Colorize("DiffAdd"    , "#1E0010"      , s:creature_orange      , "none")
call Colorize("DiffChange" , "fg"           , s:creature_light_grey , "none")
call Colorize("DiffDelete" , "#960050"      , "#1E0010"            , "none")
call Colorize("DiffText"   , s:creature_blue , s:creature_light_grey , "italic")


call Colorize("Directory"  , s:creature_orange , "NONE"            , "bold")
call Colorize("Error"      , "#960050"         , "#1E0010"         , "NONE")
call Colorize("Exception"  , s:creature_orange , "NONE"            , "bold")
call Colorize("Float"      , "#AE81FF"         , "NONE"            , "none")
call Colorize("FoldColumn" , "#465457"         , "#000000"         , "none")
call Colorize("Folded"     , "#666666"         , "bg"              , "none")
call Colorize("Function"   , s:creature_orange , "NONE"            , "none")
call Colorize("Identifier" , s:creature_orange , "NONE"            , "none")
call Colorize("Ignore"     , "#808080"         , "bg"              , "none")
call Colorize("Keyword"    , s:creature_orange , "NONE"            , "bold")
call Colorize("Label"      , s:creature_orange , "NONE"            , "none")
call Colorize("Macro"      , "#C4BE89"         , "NONE"            , "italic")
call Colorize("MatchParen" , "#000000"         , s:creature_orange , "none")
call Colorize("Operator"   , s:creature_orange , "NONE"            , "none")


" Completion menu {{{1
call Colorize("Pmenu"      , s:creature_blue   , s:creature_brown , "none")
call Colorize("PmenuSel"   , s:creature_orange  , "bg"            , "none")
call Colorize("PmenuSbar"  , "NONE"           , "#080808"       , "none")
call Colorize("PmenuThumb" , s:creature_orange   , "NONE"          , "none")


" Tabs {{{1
call Colorize("TabLine"     , s:creature_grey  , s:creature_black , "none")
call Colorize("TabLineSel"  , s:creature_red , "bg"            , "none")
call Colorize("TabLineFill" , "bg"            , s:creature_black , "none")


call Colorize("PreCondit" , s:creature_orange , "NONE"            , "bold")
call Colorize("PreProc"   , s:creature_orange , "NONE"            , "bold")
call Colorize("Question"  , s:creature_blue   , "NONE"            , "bold")
call Colorize("Repeat"    , s:creature_orange , "NONE"            , "bold")
call Colorize("Search"    , "#000000"         , s:creature_orange , "none")
call Colorize("IncSearch" , "bg", s:creature_red    , "none")


" marks column {{{1
call Colorize("SignColumn", s:creature_orange, "bg", "bold")


" Special {{{
call Colorize("SpecialKey"     , s:creature_brown  , "NONE" , "none")
call Colorize("SpecialChar"    , s:creature_orange , "NONE" , "bold")
call Colorize("SpecialComment" , "#465457"         , "NONE" , "bold")
call Colorize("Special"        , s:creature_blue   , "bg"   , "italic")


call Colorize("NonText"        , "#465457"         , "NONE" , "none")
call Colorize("Statement", s:creature_red, "NONE", "bold")


" Statusline {{{
call Colorize("Statusline"   , s:creature_red  , s:creature_brown , "none")
call Colorize("StatuslineNC" , s:creature_grey , s:creature_brown , "none")


call Colorize("StorageClass" , s:creature_orange    , "NONE"           , "italic")
call Colorize("Todo"         , s:creature_orange    , "bg"             , "bold")
call Colorize("Tag"          , s:creature_orange    , "NONE"           , "italic")
call Colorize("Structure"    , s:creature_blue      , "NONE"           , "none")
call Colorize("Title"        , "#ef5939"            , "NONE"           , "none")
call Colorize("Typedef"      , s:creature_blue      , "NONE"           , "none")
call Colorize("Type"         , s:creature_blue      , "NONE"           , "none")
call Colorize("Underlined"   , "#808080"            , "NONE"           , "underline")
call Colorize("VertSplit"    , s:creature_brown     , s:creature_brown , "bold")
call Colorize("VisualNOS"    , "NONE"               , "#403D3D"        , "none")
call Colorize("Visual"       , "NONE"               , "#403D3D"        , "none")
call Colorize("WarningMsg"   , "#FFFFFF"            , "#333333"        , "bold")
call Colorize("WildMenu"     , s:creature_blue      , "bg"             , "none")
call Colorize("Normal"       , s:creature_white     , s:creature_black , "none")
call Colorize("Comment"      , s:creature_grey      , "NONE"           , "none")
call Colorize("CursorLine"   , "NONE"               , s:creature_brown , "none")
call Colorize("CursorColumn" , "NONE"               , s:creature_brown , "none")
call Colorize("ColorColumn"  , "NONE"               , s:creature_brown , "none")
call Colorize("LineNr"       , s:creature_dark_grey , "bg"             , "none")
call Colorize("CursorLineNr" , s:creature_orange    , s:creature_brown , "none")


" HTML {{{1
call Colorize("htmlH1"     , s:creature_orange , "bg" , "bold")
call Colorize("htmlH2"     , s:creature_blue   , "bg" , "bold")
call Colorize("htmlH3"     , s:creature_orange , "bg" , "bold")
call Colorize("htmlBold"   , s:creature_orange , "bg" , "bold")
call Colorize("htmlItalic" , s:creature_orange , "bg" , "italic")

" Markdown {{{1
call Colorize("mkdListItem" , s:creature_orange    , "bg"             , "none")
call Colorize("mkdCode"     , s:creature_dark_grey , "bg"             , "none")
call Colorize("mkdLink"     , s:creature_grey      , s:creature_brown , "none")
call Colorize("mkdURL"      , s:creature_blue      , s:creature_brown , "none")


" Clojure {{{1
call Colorize("clojureFunc"    , s:creature_red  , "bg" , "none")
call Colorize("clojureKeyword" , s:creature_blue , "bg" , "none")


" Ctrlspace {{{1
call Colorize("CtrlSpaceNormal"   , "fg"           , "bg"             , "none")
call Colorize("CtrlSpaceSelected" , "fg"           , s:creature_brown , "none")
call Colorize("CtrlSpaceFound"    , s:creature_red , "bg"             , "none")


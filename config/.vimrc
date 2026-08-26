set termguicolors
colorscheme default

set number
set relativenumber
set wrap
set scrolloff=4
set sidescrolloff=4
set showmatch
set matchtime=2
set guicursor=i:block

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

set ignorecase
set smartcase
set nohlsearch
set incsearch

set hidden
set backspace=indent,eol,start
set noerrorbells
set belloff=all
set mouse=a
set encoding=UTF-8
set modifiable

set nobackup
set nowritebackup
set noswapfile
set undofile
set undolevels=10000
set undodir=~/.vim/undodir.vim

if !isdirectory($HOME . "/.vim/undodir.vim")
    call mkdir($HOME . "/.vim/undodir.vim", "p")
endif

set updatetime=300
set timeoutlen=500
set ttimeoutlen=0
set autoread
set autowrite
set synmaxcol=300
set redrawtime=10000
set maxmempattern=20000

set foldlevel=99

set formatoptions=jcroqlnt
set grepformat=%f:%l:%c:%m
set wildmenu
set wildmode=longest:full,full
set linebreak

syntax on
filetype plugin indent on

let g:netrw_banner=0
let g:netrw_liststyle=1

set langmap=ёй,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Э\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Ё~
set langremap

let mapleader=" "

nnoremap <leader>y "+y
xnoremap <leader>y "+y
nnoremap <leader>p "+p
xnoremap <leader>p "+p
nnoremap <leader>P "+P
xnoremap <leader>P "+P
nnoremap <leader>q :x<CR>
nnoremap <leader>w :update<CR>
nnoremap <leader>e :edit %:h<CR>
nnoremap <leader>E :edit .<CR>
nnoremap <leader>r :edit #<CR>
nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
xnoremap <leader>s y:%s/<C-r>"//g<Left><Left>
nnoremap <leader>b :bnext<CR>
nnoremap <leader>B :bnext<CR>
nnoremap <leader>o :copen<CR>
nnoremap <leader>l :lopen<CR>
nnoremap <leader>n :cnext<CR>
nnoremap <leader>N :cprev<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lN :lprev<CR>
nnoremap <leader>c :cclose \| lclose<CR>
nnoremap <leader>t :tabnew \| edit .<CR>
nnoremap <leader>R :source ~/.vim/.vimrc<CR>

nnoremap <leader>н "+y
xnoremap <leader>н "+y
nnoremap <leader>з "+p
xnoremap <leader>з "+p
nnoremap <leader>З "+P
xnoremap <leader>З "+P
nnoremap <leader>й :x<CR>
nnoremap <leader>ц :update<CR>
nnoremap <leader>у :edit %:h<CR>
nnoremap <leader>У :edit .<CR>
nnoremap <leader>к :edit #<CR>
nnoremap <leader>ы :%s/\<<C-r><C-w>\>//g<Left><Left>
xnoremap <leader>ы y:%s/<C-r>"//g<Left><Left>
nnoremap <leader>и :bnext<CR>
nnoremap <leader>И :bnext<CR>
nnoremap <leader>щ :copen<CR>
nnoremap <leader>д :lopen<CR>
nnoremap <leader>т :cnext<CR>
nnoremap <leader>Т :cprev<CR>
nnoremap <leader>дт :lnext<CR>
nnoremap <leader>дТ :lprev<CR>
nnoremap <leader>с :cclose \| lclose<CR>
nnoremap <leader>е :tabnew \| edit .<CR>
nnoremap <leader>К :source ~/.vim/.vimrc<CR>

if executable("rg")
    set grepprg=rg\ --vimgrep
    command! -nargs=+ -complete=file Rg silent grep! <args> | copen
    nnoremap <leader>g :Rg 
endif

if executable("fd")
    command! -nargs=+ -complete=file Fd
        \ let $FD_ARGS = <q-args> |
        \ set efm=%f |
        \ lexpr system("fd " . $FD_ARGS) |
        \ lopen
    nnoremap <leader>f :Fd 
endif

" recol:start
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "Overnight Slumber"
set background=dark

hi Normal        guifg=#ced2d6 guibg=#0e1729
hi NormalNC      guifg=#ced2d6 guibg=#0e1729
hi Terminal      guifg=#ced2d6 guibg=#0e1729
hi ColorColumn   guibg=#132038
hi Conceal       guifg=#223864
hi Cursor        guifg=#ffffff guibg=#ffa7c4
hi lCursor       guifg=#ffffff guibg=#ffa7c4
hi CursorIM      guifg=#ffffff guibg=#ffa7c4
hi CursorColumn  guibg=#192848
hi CursorLine    guibg=#192848
hi Directory     guifg=#8dabe1
hi EndOfBuffer   guifg=#0e1729
hi ErrorMsg      guifg=#ffa7c4
hi VertSplit     guifg=#0a111e
hi WinSeparator  guifg=#0a111e
hi Folded        guifg=#626466 guibg=#132038
hi FoldColumn    guifg=#626466
hi SignColumn    guifg=#626466
hi Substitute    guifg=#0e1729 guibg=#ffa7c4
hi LineNr        guifg=#626466
hi CursorLineNr  guifg=#ffcb8b gui=bold
hi MatchParen    guifg=#ffcb8b gui=bold
hi ModeMsg       guifg=#ffcb8b gui=bold
hi MoreMsg       guifg=#8dabe1 gui=bold
hi Question      guifg=#8dabe1 gui=bold
hi NonText       guifg=#223864
hi SpecialKey    guifg=#223864
hi Pmenu         guifg=#ced2d6 guibg=#2c3444
hi PmenuSel      guifg=#ced2d6 guibg=#332d41
hi PmenuSbar     guibg=#2c3444
hi PmenuThumb    guibg=#332d41
hi QuickFixLine  guibg=#192848
hi Search        guifg=#ced2d6 guibg=#332d41
hi IncSearch     guifg=#0e1729 guibg=#85cc95
hi CurSearch     guifg=#0e1729 guibg=#85cc95
hi StatusLine       guifg=#95989b guibg=#0a111e
hi StatusLineNC     guifg=#626466 guibg=#0a111e
hi StatusLineTerm   guifg=#95989b guibg=#0a111e
hi StatusLineTermNC guifg=#626466 guibg=#0a111e
hi TabLine       guifg=#95989b guibg=#132038
hi TabLineFill   guibg=#0a111e
hi TabLineSel    guifg=#0e1729 guibg=#626466
hi Title         guifg=#8dabe1 gui=bold
hi Visual        guibg=#2c3444
hi VisualNOS     guibg=#2c3444
hi WarningMsg    guifg=#ffcb8b
hi Whitespace    guifg=#192848
hi WildMenu      guifg=#ced2d6 guibg=#2c3444
hi WinBar        guifg=#626466 guibg=#0e1729 gui=bold
hi WinBarNC      guifg=#626466 guibg=#0e1729 gui=bold
hi Menu          guifg=#ced2d6 guibg=#0e1729
hi Scrollbar     guibg=#0e1729
hi Tooltip       guifg=#ced2d6 guibg=#0a111e

hi SpellBad   gui=undercurl guisp=#ffa7c4
hi SpellCap   gui=undercurl guisp=#ffcb8b
hi SpellLocal gui=undercurl guisp=#8dabe1
hi SpellRare  gui=undercurl guisp=#8dabe1

hi DiffAdd    guibg=#5b8d6f
hi DiffChange guibg=#6177a1
hi DiffDelete guibg=#ab758e
hi DiffText   guibg=#7d619d

hi Comment        guifg=#818791
hi Constant       guifg=#ffb9a8
hi String         guifg=#85cc95
hi Character      guifg=#85cc95
hi Number         guifg=#ffb9a8
hi Boolean        guifg=#ffb9a8
hi Float          guifg=#ffb9a8
hi Identifier     guifg=#78ccf0
hi Function       guifg=#8dabe1
hi Statement      guifg=#c792eb
hi Conditional    guifg=#c792eb
hi Repeat         guifg=#c792eb
hi Label          guifg=#c792eb
hi Operator       guifg=#95989b
hi Keyword        guifg=#c792eb
hi Exception      guifg=#c792eb
hi PreProc        guifg=#ffd3e2
hi Include        guifg=#ffd3e2
hi Define         guifg=#ffd3e2
hi Macro          guifg=#ffd3e2
hi PreCondit      guifg=#ffd3e2
hi Type           guifg=#ffcb8b
hi StorageClass   guifg=#ffcb8b
hi Structure      guifg=#ffcb8b
hi Typedef        guifg=#ffcb8b
hi Special        guifg=#8dabe1
hi SpecialChar    guifg=#8dabe1
hi Tag            guifg=#8dabe1
hi Delimiter      guifg=#8dabe1
hi SpecialComment guifg=#8dabe1
hi Debug          guifg=#8dabe1
hi Underlined     guifg=#8dabe1 gui=underline
hi Ignore         guifg=#132038
hi Error          guifg=#ffa7c4
hi Todo           guifg=#0e1729 guibg=#8dabe1

hi qfLineNr      guifg=#626466
hi qfFileName    guifg=#8dabe1

hi diffAdded     guifg=#85cc95
hi diffRemoved   guifg=#ffa7c4
hi diffChanged   guifg=#8dabe1
hi diffOldFile   guifg=#ffcb8b
hi diffNewFile   guifg=#85cc95
hi diffFile      guifg=#8dabe1
hi diffLine      guifg=#ffb9a8
hi diffIndexLine guifg=#ffd3e2
" recol:end

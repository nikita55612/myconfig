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
let g:colors_name = "Gruvbox Dark"
set background=dark

hi Normal        guifg=#ebdbb2 guibg=#282828
hi NormalNC      guifg=#ebdbb2 guibg=#282828
hi Terminal      guifg=#ebdbb2 guibg=#282828
hi ColorColumn   guibg=#373737
hi Conceal       guifg=#636363
hi Cursor        guifg=#282828 guibg=#ebdbb2
hi lCursor       guifg=#282828 guibg=#ebdbb2
hi CursorIM      guifg=#282828 guibg=#ebdbb2
hi CursorColumn  guibg=#474747
hi CursorLine    guibg=#474747
hi Directory     guifg=#83a598
hi EndOfBuffer   guifg=#282828
hi ErrorMsg      guifg=#cc241d
hi VertSplit     guifg=#1d1d1d
hi WinSeparator  guifg=#1d1d1d
hi Folded        guifg=#7b725d guibg=#373737
hi FoldColumn    guifg=#7b725d
hi SignColumn    guifg=#7b725d
hi Substitute    guifg=#282828 guibg=#cc241d
hi LineNr        guifg=#7b725d
hi CursorLineNr  guifg=#d79921 gui=bold
hi MatchParen    guifg=#d79921 gui=bold
hi ModeMsg       guifg=#d79921 gui=bold
hi MoreMsg       guifg=#458588 gui=bold
hi Question      guifg=#458588 gui=bold
hi NonText       guifg=#636363
hi SpecialKey    guifg=#636363
hi Pmenu         guifg=#ebdbb2 guibg=#46443d
hi PmenuSel      guifg=#ebdbb2 guibg=#46443d
hi PmenuSbar     guibg=#46443d
hi PmenuThumb    guibg=#46443d
hi QuickFixLine  guibg=#474747
hi Search        guifg=#ebdbb2 guibg=#46443d
hi IncSearch     guifg=#282828 guibg=#98971a
hi CurSearch     guifg=#282828 guibg=#98971a
hi StatusLine       guifg=#b0a485 guibg=#1d1d1d
hi StatusLineNC     guifg=#7b725d guibg=#1d1d1d
hi StatusLineTerm   guifg=#b0a485 guibg=#1d1d1d
hi StatusLineTermNC guifg=#7b725d guibg=#1d1d1d
hi TabLine       guifg=#b0a485 guibg=#373737
hi TabLineFill   guibg=#1d1d1d
hi TabLineSel    guifg=#282828 guibg=#7b725d
hi Title         guifg=#83a598 gui=bold
hi Visual        guibg=#46443d
hi VisualNOS     guibg=#46443d
hi WarningMsg    guifg=#d79921
hi Whitespace    guifg=#474747
hi WildMenu      guifg=#ebdbb2 guibg=#46443d
hi WinBar        guifg=#7b725d guibg=#282828 gui=bold
hi WinBarNC      guifg=#7b725d guibg=#282828 gui=bold
hi Menu          guifg=#ebdbb2 guibg=#282828
hi Scrollbar     guibg=#282828
hi Tooltip       guifg=#ebdbb2 guibg=#1d1d1d

hi SpellBad   gui=undercurl guisp=#cc241d
hi SpellCap   gui=undercurl guisp=#d79921
hi SpellLocal gui=undercurl guisp=#458588
hi SpellRare  gui=undercurl guisp=#458588

hi DiffAdd    guibg=#71701f
hi DiffChange guibg=#3b6466
hi DiffDelete guibg=#932521
hi DiffText   guibg=#7a4b60

hi Comment        guifg=#9d937b
hi Constant       guifg=#fb8332
hi String         guifg=#98971a
hi Character      guifg=#98971a
hi Number         guifg=#d25f1f
hi Boolean        guifg=#d25f1f
hi Float          guifg=#d25f1f
hi Identifier     guifg=#689d6a
hi Function       guifg=#83a598
hi Statement      guifg=#b16286
hi Conditional    guifg=#d3869b
hi Repeat         guifg=#d3869b
hi Label          guifg=#d3869b
hi Operator       guifg=#b0a485
hi Keyword        guifg=#b16286
hi Exception      guifg=#b16286
hi PreProc        guifg=#f39273
hi Include        guifg=#f39273
hi Define         guifg=#f39273
hi Macro          guifg=#f39273
hi PreCondit      guifg=#f39273
hi Type           guifg=#d79921
hi StorageClass   guifg=#d79921
hi Structure      guifg=#d79921
hi Typedef        guifg=#d79921
hi Special        guifg=#83a598
hi SpecialChar    guifg=#83a598
hi Tag            guifg=#83a598
hi Delimiter      guifg=#83a598
hi SpecialComment guifg=#83a598
hi Debug          guifg=#83a598
hi Underlined     guifg=#83a598 gui=underline
hi Ignore         guifg=#373737
hi Error          guifg=#cc241d
hi Todo           guifg=#282828 guibg=#458588

hi qfLineNr      guifg=#7b725d
hi qfFileName    guifg=#83a598

hi diffAdded     guifg=#98971a
hi diffRemoved   guifg=#cc241d
hi diffChanged   guifg=#458588
hi diffOldFile   guifg=#d79921
hi diffNewFile   guifg=#98971a
hi diffFile      guifg=#458588
hi diffLine      guifg=#fb8332
hi diffIndexLine guifg=#f39273
" recol:end

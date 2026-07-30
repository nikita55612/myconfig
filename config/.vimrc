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
let g:colors_name = "No Clown Fiesta"
set background=dark

hi Normal        guifg=#e0e1e4 guibg=#101010
hi NormalNC      guifg=#e0e1e4 guibg=#101010
hi Terminal      guifg=#e0e1e4 guibg=#101010
hi ColorColumn   guibg=#1f1f1f
hi Conceal       guifg=#4b4b4b
hi Cursor        guifg=#18191b guibg=#e0e1e4
hi lCursor       guifg=#18191b guibg=#e0e1e4
hi CursorIM      guifg=#18191b guibg=#e0e1e4
hi CursorColumn  guibg=#2f2f2f
hi CursorLine    guibg=#2f2f2f
hi Directory     guifg=#bad7ff
hi EndOfBuffer   guifg=#101010
hi ErrorMsg      guifg=#b46958
hi VertSplit     guifg=#050505
hi WinSeparator  guifg=#050505
hi Folded        guifg=#727274 guibg=#1f1f1f
hi FoldColumn    guifg=#727274
hi SignColumn    guifg=#727274
hi Substitute    guifg=#101010 guibg=#b46958
hi LineNr        guifg=#727274
hi CursorLineNr  guifg=#f4bf75 gui=bold
hi MatchParen    guifg=#f4bf75 gui=bold
hi ModeMsg       guifg=#f4bf75 gui=bold
hi MoreMsg       guifg=#bad7ff gui=bold
hi Question      guifg=#bad7ff gui=bold
hi NonText       guifg=#4b4b4b
hi SpecialKey    guifg=#4b4b4b
hi Pmenu         guifg=#e0e1e4 guibg=#303031
hi PmenuSel      guifg=#e0e1e4 guibg=#303031
hi PmenuSbar     guibg=#303031
hi PmenuThumb    guibg=#303031
hi QuickFixLine  guibg=#2f2f2f
hi Search        guifg=#e0e1e4 guibg=#303031
hi IncSearch     guifg=#101010 guibg=#90a959
hi CurSearch     guifg=#101010 guibg=#90a959
hi StatusLine       guifg=#a6a7a9 guibg=#050505
hi StatusLineNC     guifg=#727274 guibg=#050505
hi StatusLineTerm   guifg=#a6a7a9 guibg=#050505
hi StatusLineTermNC guifg=#727274 guibg=#050505
hi TabLine       guifg=#a6a7a9 guibg=#1f1f1f
hi TabLineFill   guibg=#050505
hi TabLineSel    guifg=#101010 guibg=#727274
hi Title         guifg=#bad7ff gui=bold
hi Visual        guibg=#303031
hi VisualNOS     guibg=#303031
hi WarningMsg    guifg=#f4bf75
hi Whitespace    guifg=#2f2f2f
hi WildMenu      guifg=#e0e1e4 guibg=#303031
hi WinBar        guifg=#727274 guibg=#101010 gui=bold
hi WinBarNC      guifg=#727274 guibg=#101010 gui=bold
hi Menu          guifg=#e0e1e4 guibg=#101010
hi Scrollbar     guibg=#101010
hi Tooltip       guifg=#e0e1e4 guibg=#050505

hi SpellBad   gui=undercurl guisp=#b46958
hi SpellCap   gui=undercurl guisp=#f4bf75
hi SpellLocal gui=undercurl guisp=#bad7ff
hi SpellRare  gui=undercurl guisp=#bad7ff

hi DiffAdd    guibg=#63733f
hi DiffChange guibg=#7f91ab
hi DiffDelete guibg=#7b4a3f
hi DiffText   guibg=#6c4d66

hi Comment        guifg=#8d8d8f
hi Constant       guifg=#b9ab90
hi String         guifg=#90a959
hi Character      guifg=#90a959
hi Number         guifg=#d49467
hi Boolean        guifg=#d49467
hi Float          guifg=#d49467
hi Identifier     guifg=#88afa2
hi Function       guifg=#bad7ff
hi Statement      guifg=#aa759f
hi Conditional    guifg=#aa759f
hi Repeat         guifg=#aa759f
hi Label          guifg=#aa759f
hi Operator       guifg=#a6a7a9
hi Keyword        guifg=#aa759f
hi Exception      guifg=#aa759f
hi PreProc        guifg=#97a3ad
hi Include        guifg=#97a3ad
hi Define         guifg=#97a3ad
hi Macro          guifg=#97a3ad
hi PreCondit      guifg=#97a3ad
hi Type           guifg=#f4bf75
hi StorageClass   guifg=#f4bf75
hi Structure      guifg=#f4bf75
hi Typedef        guifg=#f4bf75
hi Special        guifg=#bad7ff
hi SpecialChar    guifg=#bad7ff
hi Tag            guifg=#bad7ff
hi Delimiter      guifg=#bad7ff
hi SpecialComment guifg=#bad7ff
hi Debug          guifg=#bad7ff
hi Underlined     guifg=#bad7ff gui=underline
hi Ignore         guifg=#1f1f1f
hi Error          guifg=#b46958
hi Todo           guifg=#101010 guibg=#bad7ff

hi qfLineNr      guifg=#727274
hi qfFileName    guifg=#bad7ff

hi diffAdded     guifg=#90a959
hi diffRemoved   guifg=#b46958
hi diffChanged   guifg=#bad7ff
hi diffOldFile   guifg=#f4bf75
hi diffNewFile   guifg=#90a959
hi diffFile      guifg=#bad7ff
hi diffLine      guifg=#b9ab90
hi diffIndexLine guifg=#97a3ad
" recol:end

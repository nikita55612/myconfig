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
let g:colors_name = "Rose Pine"
set background=dark

hi Normal        guifg=#e0def4 guibg=#191724
hi NormalNC      guifg=#e0def4 guibg=#191724
hi Terminal      guifg=#e0def4 guibg=#191724
hi ColorColumn   guibg=#242133
hi Conceal       guifg=#423d5f
hi Cursor        guifg=#191724 guibg=#e0def4
hi lCursor       guifg=#191724 guibg=#e0def4
hi CursorIM      guifg=#191724 guibg=#e0def4
hi CursorColumn  guibg=#2e2b43
hi CursorLine    guibg=#2e2b43
hi Directory     guifg=#9ccfd8
hi EndOfBuffer   guifg=#191724
hi ErrorMsg      guifg=#eb6f92
hi VertSplit     guifg=#111019
hi WinSeparator  guifg=#111019
hi Folded        guifg=#797884 guibg=#242133
hi FoldColumn    guifg=#797884
hi SignColumn    guifg=#797884
hi Substitute    guifg=#191724 guibg=#eb6f92
hi LineNr        guifg=#797884
hi CursorLineNr  guifg=#f6c177 gui=bold
hi MatchParen    guifg=#f6c177 gui=bold
hi ModeMsg       guifg=#f6c177 gui=bold
hi MoreMsg       guifg=#9ccfd8 gui=bold
hi Question      guifg=#9ccfd8 gui=bold
hi NonText       guifg=#423d5f
hi SpecialKey    guifg=#423d5f
hi Pmenu         guifg=#e0def4 guibg=#383644
hi PmenuSel      guifg=#e0def4 guibg=#383644
hi PmenuSbar     guibg=#383644
hi PmenuThumb    guibg=#383644
hi QuickFixLine  guibg=#2e2b43
hi Search        guifg=#e0def4 guibg=#383644
hi IncSearch     guifg=#191724 guibg=#31748f
hi CurSearch     guifg=#191724 guibg=#31748f
hi StatusLine       guifg=#aaa8b9 guibg=#111019
hi StatusLineNC     guifg=#797884 guibg=#111019
hi StatusLineTerm   guifg=#aaa8b9 guibg=#111019
hi StatusLineTermNC guifg=#797884 guibg=#111019
hi TabLine       guifg=#aaa8b9 guibg=#242133
hi TabLineFill   guibg=#111019
hi TabLineSel    guifg=#191724 guibg=#797884
hi Title         guifg=#9ccfd8 gui=bold
hi Visual        guibg=#383644
hi VisualNOS     guibg=#383644
hi WarningMsg    guifg=#f6c177
hi Whitespace    guifg=#2e2b43
hi WildMenu      guifg=#e0def4 guibg=#383644
hi WinBar        guifg=#797884 guibg=#191724 gui=bold
hi WinBarNC      guifg=#797884 guibg=#191724 gui=bold
hi Menu          guifg=#e0def4 guibg=#191724
hi Scrollbar     guibg=#191724
hi Tooltip       guifg=#e0def4 guibg=#111019

hi SpellBad   gui=undercurl guisp=#eb6f92
hi SpellCap   gui=undercurl guisp=#f6c177
hi SpellLocal gui=undercurl guisp=#9ccfd8
hi SpellRare  gui=undercurl guisp=#9ccfd8

hi DiffAdd    guibg=#25465a
hi DiffChange guibg=#5b737e
hi DiffDelete guibg=#82435b
hi DiffText   guibg=#5d5172

hi Comment        guifg=#908ea1
hi Constant       guifg=#f19885
hi String         guifg=#31748f
hi Character      guifg=#31748f
hi Number         guifg=#f19885
hi Boolean        guifg=#f19885
hi Float          guifg=#f19885
hi Identifier     guifg=#ebbcba
hi Function       guifg=#9ccfd8
hi Statement      guifg=#c4a7e7
hi Conditional    guifg=#c4a7e7
hi Repeat         guifg=#c4a7e7
hi Label          guifg=#c4a7e7
hi Operator       guifg=#aaa8b9
hi Keyword        guifg=#c4a7e7
hi Exception      guifg=#c4a7e7
hi PreProc        guifg=#e6a7c3
hi Include        guifg=#e6a7c3
hi Define         guifg=#e6a7c3
hi Macro          guifg=#e6a7c3
hi PreCondit      guifg=#e6a7c3
hi Type           guifg=#f6c177
hi StorageClass   guifg=#f6c177
hi Structure      guifg=#f6c177
hi Typedef        guifg=#f6c177
hi Special        guifg=#9ccfd8
hi SpecialChar    guifg=#9ccfd8
hi Tag            guifg=#9ccfd8
hi Delimiter      guifg=#9ccfd8
hi SpecialComment guifg=#9ccfd8
hi Debug          guifg=#9ccfd8
hi Underlined     guifg=#9ccfd8 gui=underline
hi Ignore         guifg=#242133
hi Error          guifg=#eb6f92
hi Todo           guifg=#191724 guibg=#9ccfd8

hi qfLineNr      guifg=#797884
hi qfFileName    guifg=#9ccfd8

hi diffAdded     guifg=#31748f
hi diffRemoved   guifg=#eb6f92
hi diffChanged   guifg=#9ccfd8
hi diffOldFile   guifg=#f6c177
hi diffNewFile   guifg=#31748f
hi diffFile      guifg=#9ccfd8
hi diffLine      guifg=#f19885
hi diffIndexLine guifg=#e6a7c3
" recol:end

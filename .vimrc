let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('vim-scripts/ruby-matchit')
call dein#add('tpope/vim-endwise')
call dein#add('jpo/vim-railscasts-theme')
call dein#add('pangloss/vim-javascript')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('jlanzarotta/bufexplorer')
call dein#add('vim-scripts/AnsiEsc.vim')
call dein#add('szw/vim-tags')
call dein#add('leafgarland/typescript-vim')
call dein#add('AlessandroYorba/Alduin')
call dein#add('nikvdp/ejs-syntax')
call dein#add('gosukiwi/vim-atom-dark')
call dein#add('jacoborus/tender.vim')
call dein#add('Quramy/tsuquyomi')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tpope/vim-fugitive')
call dein#add('elzr/vim-json')
call dein#add('digitaltoad/vim-pug')

call dein#end()

if dein#check_install()
  call dein#install()
endif
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start
set history=100
set ignorecase
set smartcase
set title
set showcmd
set laststatus=2
set showmatch
set matchtime=1
set termencoding=utf8
set encoding=utf8
set fenc=utf8
set wrap
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=0
set hlsearch
set nu
inoremap <silent> jj <ESC>
nmap <silent> ,l :BufExplorer<CR>
let mapleader = "\<Space>"

" ctags
let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"
nnoremap <C-]> g<C-]>

autocmd FileType ruby setlocal sw=2 sts=0 ts=2 et
autocmd FileType typescript setlocal sw=4 sts=0 ts=4 noet
autocmd FileType ejs setlocal sw=4 sts=0 ts=4 noet
autocmd FileType sql setlocal sw=4 sts=0 ts=4 noet
autocmd BufNewFile,BufRead *.es6 setfiletype javascript
au BufRead,BufNewFile *.ts  setlocal filetype=typescript

syntax on
colorscheme Alduin

set noswapfile
let g:airline_theme='luna'
set laststatus=2
let g:airline_powerline_fonts = 1
vmap <Space>co <S-i>// <ESC>
let mapleader = "\<Space>"

"<Leader>f{char} to move to {char}
"map  <Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader>f <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
"nmap s <Plug>(easymotion-overwin-f2)
"vmap s <Plug>(easymotion-bd-f2)
"
"" Move to line
"map <Leader>L <Plug>(easymotion-bd-jk)
"nmap <Leader>L <Plug>(easymotion-overwin-line)
"
"" Move to word
"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)

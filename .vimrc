" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
" Bundle 'L9'  
  
" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
" Define bundles via Github repos

" 根据缩进折叠代码
Bundle "tmhedberg/SimpylFold"
" 自动缩进
Bundle "vim-scripts/indentpython.vim"
" 语法检查／高亮
Bundle 'scrooloose/syntastic'
" PEP8代码风格检查
Bundle "nvie/vim-flake8" 
" 配色方案
Bundle "altercation/vim-colors-solarized"
" 文件浏览
Bundle "scrooloose/nerdtree"
" 超级搜索
Bundle 'kien/ctrlp.vim'
" 补全括号和引号
Bundle 'jiangmiao/auto-pairs'
" 快速注释和取消注释
Bundle 'scrooloose/nerdcommenter'
" 按照pep8的标准自动格式化代码
Bundle 'tell-k/vim-autopep8'
" Git集成
" Bundle 'tpope/vim-fugitive'
" Powerline 状态栏
Bundle "Lokaltog/vim-powerline" 
" 代码补全
Bundle 'davidhalter/jedi-vim'

" c) 指定非Github的Git仓库的插件，需要使用git地址  
" Bundle 'git://git.wincent.com/command-t.git'  
  
" d) 指定本地Git仓库中的插件  
" Bundle 'file:///Users/gmarik/path/to/plugin'  
  
filetype plugin indent on     " required! 


set splitbelow
set splitright

" Ctrl + Vim标准移动键切换窗口
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 代码折叠
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
" 启用SimpylFold
let g:SimpylFold_docstring_preview=1

" 支持PEP8风格的缩进。这些配置将让vim中的tab键相当于4个标准的空格符，确保每行代码长度不超过80个字符，并且
" 会以unix格式存储文件，避免在推送到Github或分享给其他用户时出现文件转换问题。
hi BadWhitespace guifg=gray guibg=red ctermfg=gray ctermbg=red
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" 对于全栈开发，可以设置针对每种文件类型设置au命令。
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" 支持UTF-8编码
set encoding=utf-8

" 代码变得更漂亮
let python_highlight_all=1
syntax on

" 配色方案
set background=dark
colorscheme solarized

" 隐藏.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" 显示行号
set nu

" 访问系统剪切板
set clipboard=unnamed

" jk 代替 ESC
inoremap jk <ESC>

" mouse
set mouse=a
let mouseFlag =1
function! SetMouse()
    if g:mouseFlag == 1
        let g:mouseFlag=0
        set mouse=
        echo "mouse off"
    else
        let g:mouseFlag =1
        set mouse=a
        echo "mouse on"
    endif
endfunction
map <C-m> :call SetMouse() <CR>

" F5 快速运行代码
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'python'
        exec '!time python %'
    endif
endfunc

" powerline设置
set laststatus=2 

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" 开启自动补全括号或引号
let g:AutoPairsFlyMode = 1

" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

" 将leader键设置为"."
let mapleader='.'

" 注释快捷键，其中 leader 键是 .
" <leader>cc   加注释
" <leader>cu   解开注释
" <leader>c<space>  加上/解开注释, 智能判断
" <leader>cy   先复制, 再注解(p可以进行黏贴)

" autopep8配置
" 使用该插件前应先下载autopep8
" pip install --upgrade autopep8
let g:autopep8_disable_show_diff=1
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

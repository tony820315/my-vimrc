set nu
set nocompatible              " be iMproved, required
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set laststatus=2
set completeopt=longest,menu
set ruler
set shiftwidth=4
set bg=dark
set tags=./tags,./TAGS,tags;~,TAGS;~
syntax enable
colorscheme gruvbox

set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose
set laststatus=2

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

" NerdTree才外掛的配置資訊
""將F2設定為開關NERDTree的快捷鍵
map <f2> :NERDTreeToggle<cr>
map <F12> :TagbarToggle<CR>

""修改樹的顯示圖示
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""視窗位置
let g:NERDTreeWinPos='left'
""視窗尺寸
let g:NERDTreeSize=30
""視窗是否顯示行號
let g:NERDTreeShowLineNumbers=1
""不顯示隱藏檔案
let g:NERDTreeHidden=0

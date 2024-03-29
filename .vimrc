"VIM Configuration File
" Description: Optimized for C/C++ and ObjC development
" Author: Felix Grabowski
"

" disable vi compatibility (emulation of old bugs)
set nocompatible

"Vundle---------------------------------
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
"required
Bundle 'gmarik/Vundle'

"My Bundles here:
"
"original Repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'SirVer/ultisnips'
Bundle 'Rip-Rip/clang_complete'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'tmallen/transmit-vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-ruby/vim-ruby'


"non github reposi example
"Bundle 'git://git.....git'


filetype plugin indent on "required

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
"NOTE: comments after Bundle command are not allowed..

"-----------------------------------end Vundle

"set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
"show incomplete commands at the bottom
"set showcmd
"show current mode at bottom
set showmode
" load ftplugins and indent files
filetype plugin on
filetype indent on

"indention
set smartindent
set autoindent

"Read outside changes
set autoread

"commandbar height
set cmdheight=2

"ignore case in search
set ignorecase
set smartcase


" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
"set expandtab        " expand tabs to spaces
"autocmd FileType make     set noexpandtab
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
colorscheme  wombat256
"turn line numbers on
set number
" highlight matching braces
set showmatch
set mat=2 "how many tenth of seconds to blink
"highlight search
set hlsearch
"modern search
set incsearch

"magic regex
"set magic

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"Wild Menu better autocomplete
set wildmode=longest:full
set wildmenu

"Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest

"limit popup height
set pumheight=15

" default file types
"set ffs=mac

"SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"
"Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto=0
"Show clang errors in the quickfix window
let g:clang_complete_copen=1

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
"let g:DoxygenToolkit_authorName="Gerhard Gappmeier <gerhard.gappmeier@ascolab.com>" 

" Enhanced keyboard mappings
let mapleader = ','

" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
" switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>


" Abbreviations
:ab #d #define
:ab #i #include
:ab #l /*----------------------------------------------*/ 

" OSX Clipboard sharing
set clipboard=unnamed

"SmartStatusLine
set laststatus=2
let g:smartusline_string_to_highlight='(%n) %f'
let g:smartusline_hi_replace = 'guibg=#e454ba guifg=black ctermbg=magenta ctermfg=black'
let g:smartusline_hi_insert = 'guibg=orange guifg=black ctermbg=58 ctermfg=black'
let g:smartusline_hi_virtual_replace = 'guibg=#e454ba guifg=black ctermbg=magenta ctermfg=black'
let g:smartusline_hi_normal = 'guibg=#95e454 guifg=black ctermbg=lightgreen ctermfg=black'

"regex stuff
nnoremap / /\v
vnoremap / /\v

"whatever this is
if v:version >= 703
	"undo settings
	set undodir=~/.vim/undofiles
	set undofile
	set colorcolumn=+1 "mark ideal textwidth
endif

"minibufexpl
let g:miniBufExplUseSingleClick = 1

"mouse
set mouse=a
set ttymouse=xterm2
set backspace=2

"nerdtree settings toggle colors and directory arrows in utf-8
map <leader>d :NERDTreeToggle<CR>
let NERDChristmasTree=1
let NERDTreeDirArrows=1

"ultisnips
set runtimepath+=~/.vim/ultisnips_rep
let g:UltiSnipsUsePythonVersion=2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

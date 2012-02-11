"VIM Configuration File
" Description: Optimized for C/C++ and ObjC development
" Author: Felix Grabowski
"

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
"show incomplete commands at the bottom
"set showcmd
"show current mode at bottom
set showmode
" load ftplugins and indent files
filetype plugin on
filetype indent on

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
"highlight search
set hlsearch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"Wild Menu better autocomplete
set wildmode=longest:full
set wildmenu

"Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
"limit popup height
set pumheight=15
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
let g:DoxygenToolkit_authorName="Gerhard Gappmeier <gerhard.gappmeier@ascolab.com>" 

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

"whatever this is
if v:version >= 703
	"undo settings
	set undodir=~/.vim/undofiles
	set undofile
	set colorcolumn=+1 "mark ideal textwidth
endif

"mouse?
set mouse=a
set ttymouse=xterm2
set backspace=2

"nerdtree settings toggle colors and directory arrows in utf-8
map <leader>d :NERDTreeToggle<CR>
let NERDChristmasTree=1
let NERDTreeDirArrows=1

"ultisnips

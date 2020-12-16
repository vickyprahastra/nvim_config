" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Config
set noswapfile                                                " Disable Swap files
set expandtab                                                 " Indent 2 x Space
set shiftwidth=2
set softtabstop=2
filetype plugin on
syntax on

" VIEWS
set mouse=a " set active mouse
set number " set relative number

" SHORTCUTS
noremap <C-b>   		:Buffers<CR>
noremap <C-p>   		:FZF<CR>
noremap <C-g>   		:GFiles?<CR>
noremap ff   			:Rg<CR>
noremap <C-f>   		:Lines<CR>
noremap ,,   			:NERDTreeToggle<CR>
noremap <C-t>   		:call Term()<CR>

noremap <Tab>         :bn<CR>
noremap <S-Tab>       :bp<CR>
noremap <C-PageDown>  :bn<CR>
noremap <C-PageUp>    :bp<CR>

" LIVE CHANGES
noremap <silent> Y "+y
noremap <silent> P <ESC>"+p

function! Term()
	:terminal
	:set ma
endfunction

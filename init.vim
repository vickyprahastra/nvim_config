" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'zivyangll/git-blame.vim'
Plug 'rhysd/git-messenger.vim'
Plug 'ngmy/vim-rubocop'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'

" Vim
Plug 'miyakogi/seiya.vim'

" Colorshemes
Plug 'fratajczak/one-monokai-vim' " monokai
Plug 'tomasr/molokai' " monokai
Plug 'sainnhe/sonokai' " sonokai
Plug 'phanviet/vim-monokai-pro' " monkai_pro Jelek

Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-rails'

" Initialize plugin system
call plug#end()

" CONFIG
set noswapfile                                                " Disable Swap files
set expandtab                                                 " Indent 2 x Space
set shiftwidth=2
set softtabstop=2
filetype plugin on
syntax on
colorscheme monokai

" PLUGIN CONFIG
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

nnoremap <C-w>u :<C-u>call gitblame#echo()<CR>
nnoremap <C-w>m <Plug>(git-messenger)

" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '

"let g:seiya_auto_enable=1
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ 'Modified'  :'✹',
  \ 'Staged'    :'✚',
  \ 'Untracked' :'✭',
  \ 'Renamed'   :'➜',
  \ 'Unmerged'  :'═',
  \ 'Deleted'   :'✖',
  \ 'Dirty'     :'✗',
  \ 'Ignored'   :'☒',
  \ 'Clean'     :'✔︎',
  \ 'Unknown'   :'?',
  \ }

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
noremap ,f   			:NERDTreeFind<CR>
noremap <C-t>   		:call Term()<CR>

noremap <Tab>         :bn<CR>
noremap <S-Tab>       :bp<CR>
noremap <C-PageDown>  :bn<CR>
noremap <C-PageUp>    :bp<CR>

" LIVE CHANGES
noremap <silent> Y "+y
noremap <silent> P <ESC>"+p

source ~/.config/nvim/run_server.vim

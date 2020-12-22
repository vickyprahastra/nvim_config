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
Plug 'tomtom/tcomment_vim'

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
set noswapfile       " Disable Swap files
set expandtab        " Indent 2 x Space
set shiftwidth=2
set softtabstop=2
filetype plugin on
syntax on
colorscheme monokai
set mouse=a " set active mouse
set number " set relative number

" PLUGIN CONFIG
source ~/.config/nvim/plugin_config.vim

" SHORTCUTS
source ~/.config/nvim/shortcuts.vim

" RUN SERVER FUNCTIONS
source ~/.config/nvim/run_server.vim

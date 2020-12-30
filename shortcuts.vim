noremap <C-b>   		:Buffers<CR>
noremap <C-p>   		:FZF<CR>
noremap <C-g>   		:GFiles?<CR>
noremap ff   			:Rg<CR>
noremap <C-f>   		:Lines<CR>
noremap ,,   			:NERDTreeToggle<CR>
noremap ,f   			:NERDTreeFind<CR>
noremap <C-o>   		:BTags<CR>
noremap <C-t>   		:call Term()<CR>

noremap <Tab>         :bn<CR>
noremap <S-Tab>       :bp<CR>
noremap <C-PageDown>  :bn<CR>
noremap <C-PageUp>    :bp<CR>

" LIVE CHANGES
noremap <silent> Y "+y
noremap <silent> P <ESC>"+p

" RESIZE
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>

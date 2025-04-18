" clear highlighting on escape
nmap <Esc> :nohls<CR>

map <leader>vce :e ~/.config/ideavim/.ideavimrc<CR>
map <leader>vco :action IdeaVim.ReloadVimRc.reload<CR>
map <leader>vcr :source ~/.config/ideavim/ideavimrc<CR>
map <leader>vci :set trackactionids!<CR>

noremap <leader>gl :action Vcs.Show.Log<CR>
nmap Y y$

" IDEA quick actions
nmap <leader>a :action GotoAction<CR>
nmap gh :action QuickJavaDoc<CR>
nmap gd :action GotoDeclaration<CR>
nmap gu :action FindUsages<CR>


nmap <C-W><left> <C-W>h
nmap <C-W><right> <C-W>l
nmap <leader>w <C-W>

nmap sa :action GotoAction<CR>
nmap sc :action GotoClass<CR>
nmap sf :action GotoFile<CR>
nmap sn :action GotoNamespace<CR>

nmap <C-V> "
imap <C-V> <C-R>

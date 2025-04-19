" clear highlighting on escape
nmap <Esc> :nohls<CR>

" local helpers for adding a keymap and a description for which-key
let s:counter = 1

function! s:addDesc(keys, desc)
  execute 'let g:WhichKeyDesc_' .. s:counter .. ' = "' .. a:keys .. ' ' .. a:desc .. '"'
  let s:counter = s:counter + 1
endfunction

function! s:mapDesc(keys, action, desc, mode='nnore')
  execute a:mode .. 'map ' .. a:keys .. ' ' .. a:action
  call s:addDesc(a:keys, a:desc)
endfunction

function! s:nv(keys, action, desc)
  call s:mapDesc(a:keys, a:action, a:desc, 'nnore')
  call s:mapDesc(a:keys, a:action, a:desc, 'vnore')
endfunction

call s:mapDesc('<C-V>', '"', 'Registers', 'nore')
call s:mapDesc('<C-V>', '<C-R>', 'Registers', 'inore')

call s:addDesc('<leader>v', 'Idea[V]im')
call s:addDesc('<leader>vc', '[C]onfig')
call s:nv('<leader>vce', ':e ~/.config/ideavim/.ideavimrc<CR>', '[e]dit vimrc')
call s:nv('<leader>vcr', ':source ~/.config/ideavim/ideavimrc<CR>', 'sou[r]ce vimrc')
call s:nv('<leader>vci', ':set trackactionids!<CR>', 'toggle action track[i]ng')

call s:addDesc('<leader>g', '[G]it')
call s:mapDesc('<leader>gl', ':action Vcs.Show.Log<CR>', '[l]og')
nmap Y y$

" IDEA quick actions
call s:addDesc('g', '[G]oto')
call s:mapDesc('gh', ':action QuickJavaDoc<CR>', 'quick doc')
call s:mapDesc('gd', ':action GotoDeclaration<CR>', '[d]efinition')
call s:mapDesc('gu', ':action FindUsages<CR>', '[u]sages')
call s:mapDesc('gm', ':action FileStructurePopup<CR>', '[m]embers')

nnoremap <C-W><left> <C-W>h
nnoremap <C-W><right> <C-W>l
call s:mapDesc('<leader>w', '<C-W>', '[W]indow')

call s:addDesc('s', '[S]earch')
call s:mapDesc('sa', ':action GotoAction<CR>', '[a]ction')
call s:mapDesc('sc', ':action GotoClass<CR>', '[c]lass')
call s:mapDesc('sf', ':action GotoFile<CR>', '[f]ile')
call s:mapDesc('sn', ':action GotoNamespace<CR>', '[n]amespace')
call s:mapDesc('ss', ':action GotoSymbol<CR>', '[s]ymbol')



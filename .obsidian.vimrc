map <Space> <Leader>

imap jj <Esc>

vmap  <C-j> ":m '>+1<CR>==gv"
vmap  <C-k> ":m '>-2<CR>==gv"

nmap <C-p> "cw<C-r>0<Esc>"

nmap j gj
nmap k gk
nmap H g0
nmap L g$

vmap j gj
vmap k gk

nmap J <C-d>zz
nmap K <C-u>zz
vmap J <C-d>zz
vmap K <C-u>zz

nmap <leader>o o<Esc>0"_D
nmap <leader>O O<Esc>0"_D

exmap wq obcommand workspace:close
exmap q obcommand workspace:close

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom

exmap splitVertical obcommand workspace:split-vertical
nmap <C-w>v :splitVertical

exmap splitHorizontal obcommand workspace:split-horizontal
nmap <C-w>s :splitHorizontal

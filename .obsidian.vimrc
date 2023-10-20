nnoremap <Space> <Nop>
let mapleader=" "

map i jj<Esc>

vmap  <C-j> ":m '>+1<CR>==gv"
vmap  <C-k> ":m '>-2<CR>==gv"

nmap <C-p> "cw<C-r>0<Esc>"

nmap H ^
nmap L $
vmap H ^
vmap L $

keymap("n", "J", "<C-d>zz", opts)
keymap("n", "K", "<C-u>zz", opts)
keymap("v", "J", "<C-d>zz", opts)
keymap("v", "K", "<C-u>zz", opts)

nmap <leader>o o<Esc>0"_D
nmap <leader>O O<Esc>0"_D

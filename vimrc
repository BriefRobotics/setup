execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set background=dark
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab

nmap <leader>v :e ~/.vimrc<cr>
nmap <leader>s :w<cr>
nmap <leader>n :NERDTreeToggle<cr>

nmap <leader>r :! clear && cd server && sudo node app.js<cr>

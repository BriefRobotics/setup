execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set background=dark
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set hlsearch incsearch

nmap <leader>v :e ~/.vimrc<cr>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <esc><esc> :nohlsearch<cr>

nmap <leader>r :! clear && cd server && sudo node app.js<cr>
nmap <leader>g :vimgrep //g **<left><left><left><left><left>

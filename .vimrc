execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set number
set background=dark
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set hlsearch incsearch
set updatetime=500

nmap <leader>v :e ~/.vimrc<cr>
nmap <leader>a ggVG
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>t :tabnext<cr>
nmap <leader>x :LLPStartPreview<cr>
nmap <esc><esc> :nohlsearch<cr>
nmap <leader>f :!rm -f main.exe && clear && fsharpc -o main.exe % && ./main.exe<cr>

nmap <leader>r :!clear && cd server && sudo node app.js<cr>
nmap <leader>g :vimgrep //g **<left><left><left><left><left>

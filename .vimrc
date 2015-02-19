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
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>b :tabnext<cr>
nmap <leader>x :LLPStartPreview<cr>
nmap <esc><esc> :nohlsearch<cr>:w<cr>
noremap <a-cr> :<C-u>call fsharpbinding#python#FsiSendLine()<cr>
noremap <leader>i :<C-u>call fsharpbinding#python#FsiSendLine()<cr>
vnoremap <leader>i :<C-u>call fsharpbinding#python#FsiSendSel()<cr>

" F#
nmap <leader>f :w<cr>:!rm -f main.exe && clear && fsharpc -o main.exe % && ./main.exe<cr>
nmap <leader>r :!clear && cd server && sudo node app.js<cr>
nmap <leader>g :vimgrep //g **<left><left><left><left><left>

augroup fsharp_au
    au!
    au CursorHold *.fs,*.fsi,*.fsx SyntasticCheck
augroup END

" This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

" Python
nmap <leader>p :w<cr>:!python %<cr>
vmap <leader>p :!python<cr>
set foldmethod=indent
set foldlevel=99

" C
nmap <leader>c :w<cr>:!gcc % -o %.exe & ./%.exe<cr>

" Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

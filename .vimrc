execute pathogen#infect()
syntax on
filetype plugin indent on

" Temp
nmap <leader>q :w<cr> :!sh process.sh<cr>

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" no temp (.swp, etc.) files in current directory
set directory=~/tmp,/var/tmp,/tmp

set number
set background=dark
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set hlsearch incsearch
set updatetime=500
set clipboard=unnamedplus
cmap w!! w !sudo tee %
nmap <leader><space> i<space><esc>
vmap <leader><space> I<space><esc>
nmap <leader>v :e ~/.vimrc<cr>
nmap <leader>a ggVG
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>b :w<cr> :!sh build.sh<cr>
nmap <leader>s :w<cr> :!sh start.sh<cr>
nmap <leader>x :LLPStartPreview<cr>
nmap <esc><esc> :nohlsearch<cr>:w<cr><c-l>
noremap <a-cr> :<C-u>call fsharpbinding#python#FsiSendLine()<cr>
noremap <leader>i :<C-u>call fsharpbinding#python#FsiSendLine()<cr>
vnoremap <leader>i :<C-u>call fsharpbinding#python#FsiSendSel()<cr>

" F#
nmap <leader>f :w<cr>:!rm -f main.exe && clear && fsharpc -o main.exe % && ./main.exe<cr>
nmap <leader>r :w<cr>:!clear && sudo gulp && npm start<cr>
nmap <leader>g :vimgrep //g **/*.ts<left><left><left><left><left><left><left><left><left><left>

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

" Node
nmap <leader>n :w<cr>:!node %<cr>
vmap <leader>n :!node<cr>

" C
nmap <leader>c :w<cr>:!gcc % -o %.exe<cr>:!./%.exe<cr>

" Build
nmap <leader>b :w<cr>:!sh build.sh<cr>

" Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Thesaurus
set thesaurus+=~/thesaurus/mthesaur.txt

" Matching punctuation
imap <leader>( ()<c-o>i
imap <leader>[ []<c-o>i
imap <leader>{ {}<c-o>i
imap <leader>' ''<c-o>i
imap <leader>" ""<c-o>i

let g:airline_powerline_fonts = 1

" pomodoro
nmap <leader>ps :!pom start<cr><cr>
nmap <leader>pp :!pom pause<cr><cr>
nmap <leader>pt :!pom stop<cr><cr>

" spelling
set spellfile=~/.vim/spell/en.utf-8.add

" Racket
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" Relative numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

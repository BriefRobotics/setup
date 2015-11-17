#!/bin/bash
apt-get install vim

# vimrc
cp -f ./.vimrc ~/.vimrc

# monokai
mkdir ~/.vim ~/.vim/colors
curl -G https://raw.githubusercontent.com/lsdr/monokai/master/colors/monokai.vim -o ~/.vim/colors/monokai.vim

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

# my favorite plugins
git clone git://github.com/tpope/vim-sensible.git
git clone git://github.com/tpope/vim-surround.git
git clone https://github.com/kien/ctrlp.vim.git
git clone git://github.com/godlygeek/tabular.git
git clone git://github.com/tpope/vim-commentary.git
git clone git://github.com/tpope/vim-repeat.git
git clone http://github.com/mattn/emmet-vim.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/majutsushi/tagbar.git
git clone git://github.com/tpope/vim-unimpaired.git
git clone git://github.com/guns/vim-sexp.git
git clone git://github.com/tpope/vim-sexp-mappings-for-regular-people.git
git clone git://github.com/tpope/vim-fireplace.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/leafgarland/typescript-vim
git clone https://github.com/jelera/vim-javascript-syntax
git clone https://github.com/wlangstroth/vim-racket
git clone https://github.com/horse-vim/vim-niji
git clone https://github.com/vim-scripts/paredit.vim
git clone https://github.com/sjl/tslime.vim

# airline/powerline fonts
# wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
# wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
# mv PowerlineSymbols.otf ~/.fonts/ # mkdir?
# fc-cache -vf ~/.fonts/
# mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/ # mkdir?

# fsharp bindings
mkdir tmp
pushd .
cd tmp
sudo git clone https://github.com/fsharp/fsharpbinding
cd fsharpbinding/vim/
sudo make install
popd
rm -rf tmp

# markdown preview
apt-get install ruby
apt-get install ruby-dev
gem install pygments.rb
gem install redcarpet
npm -g install socket.io@0.9 # newer doesn't work with instant-markdown
npm -g install instant-markdown-d
git clone https://github.com/suan/vim-instant-markdown.git

# TeX preview
apt-get install okular # PDF viewer
apt-get install texlive-latex-base
apt-get install texlive-latex-extra
agt-get install texlive-fonts-recommended
git clone https://github.com/xuhdev/vim-latex-live-preview
mktextfm gray # missing for metafont dev work
mktextfm black # missing for metafont dev work

# Thesaurus - set thesaurus+=~/thesaurus/mthesaur.txt
wget http://www.gutenberg.org/dirs/etext02/mthes10.zip
mkdir ~/thesaurus
unzip mthes10.zip -d ~/thesaurus/

apt-get install vim

# monokai
mkdir ~/.vim
curl -G https://raw.githubusercontent.com/lsdr/monokai/master/colors/monokai.vim -o ~/.vim/monokai.vim

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

cp ./.vimrc ~/.vimrc

#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
unset ZSH

echo "Installing ZSH and oh-my-zsh"
echo "Please enter your password when prompted"
if which zsh >/dev/null; then
  echo "ZSH installed. Not apt-getting"
else
  sudo apt-get install zsh
fi
if which curl >/dev/null; then
  echo "CURL installed. Not apt-getting"
else
  sudo apt-get install curl
fi
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`

echo "Installing ZSH files"
cp "$DIR/.zshrc" ~/.zshrc
sed -i.bak 's/\/home\/falanyx/$HOME/' ~/.zshrc
mkdir -p ~/.oh-my-zsh/custom/themes
cp "$DIR/erathis.zsh-theme" ~/.oh-my-zsh/custom/themes/

echo "Installing VIm files"
cp "$DIR/.vimrc" ~/.vimrc
cp -r "$DIR/.vim" ~/.vim
echo "Grabbing vim modules"
pushd
cd ~/.vim/bundle
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/othree/eregex.vim.git
git clone https://github.com/vim-scripts/mru.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/bling/vim-airline.git
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/tpope/vim-fugitive

echo "Installed. Please restart your session!"

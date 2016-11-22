#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$DIR"

if ! [[ ./ -ef ~/.dotfiles ]]; then
  mv "$DIR" ~/.dotfiles
  /bin/bash ~/.dotfiles/install.sh
  cd ~
  exit 0;
fi

echo "Installing prerequisites..."
if ! type "apt-get" > /dev/null; then
  sudo apt-get install build-essential cmake python-dev python3-dev
fi

echo "Backing up old files..."
mkdir "$DIR/bak"
cp ~/.zshrc "$DIR/bak/"
cp ~/.vimrc "$DIR/bak/"
cp ~/.eslintrc "$DIR/bak/"
cp ~/.tmux.conf "$DIR/bak/"
cp -r ~/.vim "$DIR/bak/.vim"

echo "Installing ZSH files"
ln -sf "$DIR/.zshrc" ~/.zshrc

echo "Installing VIm files"
ln -sf "$DIR/.vimrc" ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c ":PlugInstall|q|q"

echo "Installing tmux files"
ln -sf "$DIR/.tmux.conf" ~/.tmux.conf

echo "Installing ESLint configurations."
ln -sf "$DIR/.eslintrc" ~/.eslintrc

echo "Make sure, if you haven't, to run the following command:"
echo "npm install -g eslint babel-eslint eslint-plugin-react"

echo "Installed. Please restart your session!"

#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Installing ZSH and oh-my-zsh"
echo "Please enter your password when prompted"
sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`

echo "Installing ZSH files"
cp "$DIR/.zshrc" ~/.zshrc
mkdir -p ~/.oh-my-zsh/custom/themes
cp "$DIR/erathis.zsh-theme" ~/.oh-my-zsh/custom/themes/

echo "Installed. Please restart your session!"

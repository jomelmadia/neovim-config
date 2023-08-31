#!/bin/bash 

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget -P ~/.config/nvim/ "https://raw.githubusercontent.com/jomelmadia/neovim-config/main/init.vim"

#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

# bashrc files
ln -sf "$DIR/.aliases" ~/.aliases
ln -sf "$DIR/.paths" ~/.paths
ln -sf "$DIR/.zshrc" ~/.zshrc

rm -rf ~/.oh-my-zsh
ln -sf "$DIR/.oh-my-zsh" ~/.oh-my-zsh

# gitconfig
ln -sf "$DIR/.gitconfig" ~/.gitconfig

# fonts
rm -r ~/.fonts
ln -sf "$DIR/.fonts" ~/.fonts

# config
rm -rf ~/.config/kitty
ln -sf "$DIR/.config/kitty" ~/.config/kitty
rm -rf ~/.config/fontconfig
ln -sf "$DIR/.config/fontconfig" ~/.config/fontconfig

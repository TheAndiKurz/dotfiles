#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

# bashrc files
ln -sf "$DIR/.bashrc" ~/.bashrc
ln -sf "$DIR/.aliases" ~/.aliases
ln -sf "$DIR/.paths" ~/.paths

# gitconfig
ln -sf "$DIR/.gitconfig" ~/.gitconfig

# fonts
rm -r ~/.fonts
ln -sf "$DIR/.fonts" ~/.fonts

# config
rm -r ~/.config/kitty
ln -sf "$DIR/.config/kitty" ~/.config/kitty
rm -r ~/.config/fontconfig
ln -sf "$DIR/.config/fontconfig" ~/.config/fontconfig

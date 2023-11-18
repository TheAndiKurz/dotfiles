#!/bin/bash

local $DIR=$(dirname $0)

# bashrc files
ln -s "$DIR/.bashrc" ~/.bashrc
ln -s "$DIR/.bash_aliases" ~/.bash_aliases
ln -s "$DIR/.bash_logout" ~/.bash_logout
ln -s "$DIR/.bash_paths" ~/.bash_paths
ln -s "$DIR/.bash_profile" ~/.bash_profile
ln -s "$DIR/.bash_prompt" ~/.bash_prompt

# gitconfig
ln -s "$DIR/.gitconfig" ~/.gitconfig

# fonts
ln -s "$DIR/.fonts" ~/.fonts

# config
ln -s "$DIR/.config/kitty" ~/.config/kitty
ln -s "$DIR/.config/fontconfig" ~/.config/fontconfig


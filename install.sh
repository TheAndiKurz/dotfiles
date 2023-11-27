#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

# bashrc files
ln -sf "$DIR/.bashrc" ~/.bashrc
ln -sf "$DIR/.bash_aliases" ~/.bash_aliases
ln -sf "$DIR/.bash_logout" ~/.bash_logout
ln -sf "$DIR/.bash_paths" ~/.bash_paths
ln -sf "$DIR/.bash_profile" ~/.bash_profile
ln -sf "$DIR/.bash_prompt" ~/.bash_prompt

# gitconfig
ln -sf "$DIR/.gitconfig" ~/.gitconfig

# fonts
ln -sf "$DIR/.fonts" ~/.fonts

# config
ln -sf "$DIR/.config/kitty" ~/.config/kitty
ln -sf "$DIR/.config/fontconfig" ~/.config/fontconfig
ln -sf "$DIR/.config/starship.toml" ~/.config/starship.toml

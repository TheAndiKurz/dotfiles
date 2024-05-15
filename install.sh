#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

# installs
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "oh-my-zsh already installed"
else
    echo "installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}" ]; then
    echo "installing zsh-autosuggestions"
    git clone git@github.com:zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# bashrc files
ln -sf "$DIR/.aliases" ~/.aliases
ln -sf "$DIR/.paths" ~/.paths
ln -sf "$DIR/.zshrc" ~/.zshrc

# gitconfig
ln -sf "$DIR/.gitconfig" ~/.gitconfig

# fonts
rm -r ~/.fonts
ln -sf "$DIR/.fonts" ~/.fonts

# config
rm -rf ~/.config/sway
ln -sf "$DIR/.config/sway" ~/.config/sway
rm -rf ~/.config/kitty
ln -sf "$DIR/.config/kitty" ~/.config/kitty
rm -rf ~/.config/fontconfig
ln -sf "$DIR/.config/fontconfig" ~/.config/fontconfig


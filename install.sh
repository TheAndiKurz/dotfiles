#!/usr/bin/zsh

# check dependencies
if ! hash curl 2>/dev/null; then
    echo "curl not found"
    echo "please install curl"
    exit 1
fi

if ! hash git 2>/dev/null; then
    echo "git not found"
    echo "please install git"
    exit 1
fi

DIR="$(dirname "$(readlink -f "$0")")"

# installs
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "oh-my-zsh already installed"
else
    echo "installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -d "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}" ]; then
    echo "installing zsh-autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo "installing zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
    echo "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom} not found"
fi

if hash zoxide 2>/dev/null; then
    echo "zoxide already installed"
else
    echo "installing zoxide"
    curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

    echo "consider installing ripgrep"
fi

if hash fzf 2>/dev/null; then
    echo "fzf already installed"
else
    echo "installing fzf"
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

# bashrc files
ln -sf "$DIR/.aliases" ~/.aliases
ln -sf "$DIR/.paths" ~/.paths
ln -sf "$DIR/.zshrc" ~/.zshrc
ln -sf "$DIR/shell.toml" ~/.shell.toml

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


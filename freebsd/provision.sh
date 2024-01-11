#!/bin/sh

pkg update
pkg upgrade
pkg install -y neofetch curl tmux git go rust zsh neovim

# change default shell to Zsh
chsh -s /usr/local/bin/zsh vagrant

# # install oh-my-zsh
if [ ! -d "/home/vagrant/.oh-my-zsh" ]; then
    export HOME=/home/vagrant # for oh-my-zsh installation
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# zsh plugins & themes
if [ ! -d "/home/vagrant/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/vagrant/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

if [ ! -d "/home/vagrant/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions /home/vagrant/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

if [ ! -d "/home/vagrant/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/vagrant/.oh-my-zsh/custom/themes/powerlevel10k
fi

if [ ! -d "/home/vagrant/my-vagrantfiles" ]; then
    git clone https://github.com/jasonkwh/my-vagrantfiles.git /home/vagrant/my-vagrantfiles
    cp /home/vagrant/my-vagrantfiles/freebsd/.zshrc /home/vagrant/.zshrc
fi
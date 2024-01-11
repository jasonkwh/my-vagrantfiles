#!/bin/sh

pkg update
pkg upgrade
pkg install -y neofetch curl tmux git go rust zsh

# change default shell to Zsh
chsh -s /usr/local/bin/zsh vagrant

# # install oh-my-zsh
# if [ ! -d "/root/.oh-my-zsh" ]; then
#     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#     ln -s /root/.zshrc /home/vagrant/.zshrc
#     ln -s /root/.oh-my-zsh /home/vagrant/.oh-my-zsh
# fi

# # zsh plugins & themes
# if [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
#     git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# fi

# if [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
#     git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# fi

# if [ ! -d "/root/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
#     git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k
# fi
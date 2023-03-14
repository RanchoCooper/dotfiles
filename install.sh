# clear all dotfiles
rm -f ~/.zshrc ~/.vimrc  ~/.ideavimrc  ~/.gitconfig ~/.tmux.conf

# init dotfiels repo
cd ~/dotfiles && git submodule init && git submodule update

# install vim
cd ~/dotfiles/k-vim && bash install.sh

# make all dotfiels
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/k-vim/vimrc ~/.vimrc
ln -s ~/dotfiles/ideavimrc ~/.ideavimrc
ln -s ~/dotfiles/gitconfig.basic ~/.gitconfig
ln -s ~/dotfiles/k-tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/p10k.zsh ~/.p10k.zsh

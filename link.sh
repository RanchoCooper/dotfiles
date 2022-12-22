rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

rm ~/.vimrc
rm ~/.vimrc.bundles
ln -s ~/dotfiles/k-vim/vimrc ~/.vimrc
ln -s ~/dotfiles/k-vim/vimrc.bundles ~/.vimrc.bundles

rm ~/.p10k.zsh
ln -s ~/dotfiles/p10k.zsh ~/.p10k.zsh

rm ~/.tmux.conf
ln -s ~/dotfiles/k-tmux/tmux.conf ~/.tmux.conf

rm ~/.ideavimrc
ln -s ~/dotfiles/ideavimrc ~/.ideavimrc
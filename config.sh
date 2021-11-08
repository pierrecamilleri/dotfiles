cd ~/dotfiles

# Install nvim & fzf
apt-get install nvim
apt-get install fzf
# nvim: install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
stow nvim
# Install nvim plugins
vim +PluginInstall +qall

# Install shell colorscheme
stow bash
git clone https://github.com/aaron-williamson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal
~/.config/base16-gnome-terminal/color-scripts/base16-gruvbox-dark-soft.sh

# Install ipython
apt-get install ipython3
stow ipython

#sudo Install tmux
apt-get install tmux
apt-get install tmuxinator
stow tmux
stow tmuxinator

# R and Radian
pip3 install radian
stow radian

# Install i3
apt-get install i3
stow i3

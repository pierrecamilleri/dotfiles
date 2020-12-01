How to install
--------------


```bash
# clone this repo into ~/dotfiles
cd ~
git clone JazzyPierrot/dotfiles
sudo apt install stow
```

And then stow the config files you are interested in from inside the dotfiles 
repository:

```bash
cd ./dotfiles
stow nvim # Vim and nvim
stow bash # Bash and readline
stow tmux 
```


Vim configuration
=================

- Install Vundle, and do ":PluginInstall" inside nvim. 


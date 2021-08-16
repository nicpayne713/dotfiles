## Setup
Need to create a python3 conda environment with 'conda create --name nvim3 python=3.9' for the python3 provider for neovim and install "pip install neovim"
Also for python lsp stuff need to use these 2 commands from Waylon's repo:

```
pipx install 'python-lsp-server[all]'
pipx inject python-lsp-server pylsp-mypy
```

Will need to make sure that `isort`, `black`, and `flake8` are installed globally

```
ln -s ~/git/dotfiles/.zshrc ~/.zshrc
ln -s ~/git/dotfiles/.vimrc ~/.vimrc
ln -s ~/git/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -s ~/git/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s ~/git/dotfiles/.scripts/ta /usr/local/bin/ta 
ln -s ~/git/dotfiles/.config/nvim ~/.config/nvim 

```

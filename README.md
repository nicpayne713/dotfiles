## Setup
Need to create a python3 conda environment with 'conda create --name nvim3 python=3.9' for the python3 provider for neovim and install "pip install neovim"
Also for python lsp stuff need to use these 2 commands from Waylon's repo:

```
pipx install 'python-lsp-server[all]'
pipx inject python-lsp-server pylsp-mypy
```

Will need to make sure that `isort`, `black`, and `flake8` are installed globally
 
## Stow
Use `stow` since it's awesome!

For a quick intro check out [ThePrimeagen's YT video](https://www.youtube.com/watch?v=tkUllCAGs3c)

Caveats: fresh machine will need https://github.com/gpakosz/.tmux and https://github.com/ohmyzsh/ohmyzsh setup first
Then using the OS script (`darwin` or `ubuntu` set the variables and let `stow` do the rest!)

## Notes
My tmux stuff jumps you right into `base` tmux session when you open a terminal that inits my `zshrc`

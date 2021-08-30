## Setup
- Need to create a python3 conda environment with 'conda create --name nvim3 python=3.9' for the python3 provider for neovim and install "pip install neovim"
- Also for python lsp stuff need to use these 2 commands from Waylon's repo:

    ```
    pipx install 'python-lsp-server[all]'
    pipx inject python-lsp-server pylsp-mypy
    ```
- If using `pyright`
    - Will need `npm` for `nvim-lsp`
        ```
        sudo apt updatde
        sudo apt install nodejs npm
        ``` 
    - Will then need `pyright`
        ```
        sudo npm i -g pyright
    ```
- Can use `jedi-language-server` and `pyls` instead
    - Install them
    ```pipx install jedi-language-server```
- Will need to make sure that `isort`, `black`, and `flake8` are installed globally
- For autocompletion
-
- For transparency with default terminal in i3
-   - Need to install picom (on older Ubuntu I had to build from source: https://github.com/jonaburg/picom)
-   - https://www.linuxfordevices.com/tutorials/linux/picom
-polybar
    - install fontawesome with `apt install fonts-font-awesome`
## Stow
Use `stow` since it's awesome!

For a quick intro check out [ThePrimeagen's YT video](https://www.youtube.com/watch?v=tkUllCAGs3c)

Caveats: fresh machine will need https://github.com/gpakosz/.tmux and https://github.com/ohmyzsh/ohmyzsh setup first
Then using the OS script (`darwin` or `ubuntu` set the variables and let `stow` do the rest!)

## Notes
- My tmux stuff jumps you right into `base` tmux session when you open a terminal that inits my `zshrc`
- If starship is showing your environment twice set the following:
    `conda config --set changeps1 false` and then resource `zsh`

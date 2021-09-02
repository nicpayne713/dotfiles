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
- For polybar colorizing icons I just have polybar render the output through a font like this `content = "%{T4}%{F#5d3fd3}省%{F-}%{T-}"` Where a font is chosen (T4) then the color I want follows the `F#` with the icon placed after the brace. The font size can be huge for some icons depending on where they come from
- to get fonts I just downloaded the JetBrains Nerd Font and double clicked the font I wanted in a file explorer... I'm not sure how to do it in a more streamlined way but it does get me up and running
- for i3-gaps I had to install from source - see here: https://lottalinuxlinks.com/how-to-build-and-install-i3-gaps-on-debian/

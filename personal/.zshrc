# If you come from bash you might have to change your $PATH.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/dotfiles
export STOW_FOLDERS="personal,nvim,tmux,starship,ipython,pip,i3,shortcuts,polybar,picom,gitui,visidata"
export POLYBAR_BAR="home"
export PATH="$HOME/.local/bin:$PATH"
export PYTHONPATH="$HOME/miniconda3/bin/python3"
export EDITOR=nvim
export TERM=screen-256color-bce
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export ZSH_DISABLE_COMPFIX="true"
export XDG_CURRENT_DESKTOP=KDE
#ZSH_THEME="robbyrussell"
ZSH_THEME=random
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git dotenv ag colorize zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# source ~/.zprofile

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8
# >>> my export init >>>
export iam="$(whoami)"
export CONDA_HOME="$HOME/miniconda3"
[[ ":${PATH}:" != *":${CONDA_HOME}/bin:"* ]] && export PATH="${CONDA_HOME}/bin:${PATH}"
# <<< my export init <<<
# >>> conda init >>>
# !! Contents within this block are managed by ‘conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
# . "$HOME/miniconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
    else
# export PATH="$HOME/miniconda3/bin:$PATH"  # commented out by conda initialize
    fi
fi
unset __conda_setup
# <<< conda init <<<

# fuzzies
a() {
     conda activate "$(conda info --envs | fzf | awk '{print $1}')"
 }

c() {
     cd && cd "$(find -maxdepth 2 -type d  | cut -c 3-  | fzf | awk '{print $1}')"
 }

# Change backgrounds
background() {
    feh --bg-scale "$(find ~/dotfiles/backgrounds ~/git/anime -mindepth 1 -maxdepth 1 -type f | fzf)"
}

# Fuzzy tmux starter
ts() {
    # will popd with tmux session switcher in tmux.conf.local
    pushd "$(find ~/ -mindepth 1 -maxdepth 2 -type d | fzf)" && ta --start
}
# aliases
alias vim="nvim"
alias bim="nvim"
alias cdg="cd ~/git"
alias deac="conda deactivate && conda deactivate"
alias src="source ~/.zshrc"
alias envrc="cp $HOME/dotfiles/direnv/.envrc ."

## for starting dropbox at home
alias dbox="python3 $HOME/dotfiles/dropbox/dropbox.py start"

# starship
eval "$(starship init zsh)"
# direnv
eval "$(direnv hook zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Jump into a tmux session
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t base || tmux new -s base
fi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

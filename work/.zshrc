# If you come from bash you might have to change your $PATH.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/dotfiles
export STOW_FOLDERS="work,nvim,tmux,starship,ipython,pip,i3,shortcuts,polybar,picom,gitui,visidata"
export POLYBAR_BAR="work"
export PATH="$HOME/.local/bin:$PATH"
export PYTHONPATH="$HOME/miniconda3/bin/python3"
export EDITOR=nvim
export TERM=screen-256color-bce
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export ZSH_DISABLE_COMPFIX="true"
#ZSH_THEME="robbyrussell"
ZSH_THEME=random
 ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git dotenv ag colorize zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# source ~/.zprofile

# You may need to manually set your language environment
export LANG=en_US.UTF-8
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

# work stuff
alias new_reman="cookiecutter https://reman-analytics-cat-com.visualstudio.com/reman_analytics_pipeline_project_template/_git/reman_analytics_pipeline_project_template"
alias aproxy="source ~/.local/bin/auto_proxy"
alias azcheckout='az repos pr checkout --id $(az repos pr list --output table | tail -n -2 | fzf | cut -d " " -f1)'

# temp git diff shortcuts
alias gdiff="git diff ..main | nvim - -R +Diffurcate"
# starship
eval "$(starship init zsh)"
# direnv
eval "$(direnv hook zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# autoproxy for work
eval source auto_proxy
# Jump into a tmux session
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t base || tmux new -s base
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/u_paynen3/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/u_paynen3/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/u_paynen3/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/u_paynen3/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

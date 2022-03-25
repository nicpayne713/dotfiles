# If you come from bash you might have to change your $PATH.
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/dotfiles
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export APPIMAGE_ROOT="$HOME/AppImages:"
export PATH="$APP_IMAGE_ROOT:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
export PIPX_DEFAULT_PYTHON="$HOME/.pyenv/shims/python"
# export TERM=screen-256color-bce
# export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export ZSH_DISABLE_COMPFIX="true"
# export PS1="%F{#83DCC8}❯%f"  # trying to set prompt chevron icon to a blue that matches
# ZSH_THEME="robbyrussell"
# ZSH_THEME=random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# ZSH_THEME_RANDOM_QUIET=true

plugins=(git dotenv ag zsh-autosuggestions)

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
    clear && feh --bg-scale "$(find ~/dotfiles/backgrounds ~/personal/anime -mindepth 1 -maxdepth 1 -type f | fzf)"
}

# aliases
alias vim="nvim"
alias bim="nvim"
alias cdw="cd ~/work"
alias cdp="cd ~/personal"
alias deac="conda deactivate && conda deactivate"
alias src="source ~/.zshrc"
alias envrc="cp $HOME/dotfiles/.envrc ."

alias azlogin="az login --allow-no-subscriptions"
alias azcheckout='az repos pr checkout --id $(az repos pr list --output table | tail -n -2 | fzf | cut -d " " -f1)'
alias awsrules="aws events list-rules | visidata -f json"
# temp git diff shortcuts
alias gdiff="git diff main.. | nvim - -R +Diffurcate"
# starship
eval "$(starship init zsh)"
# direnv
eval "$(direnv hook zsh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# autoproxy for work
if [ $POLYBAR_BAR=="work" ]; then
    eval source auto_proxy
fi
# source rust 
source "$HOME/.cargo/env"
# Jump into a tmux session
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t base || tmux new -s base
fi

eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# BEGIN ANSIBLE MANAGED BLOCK: pyenv
if [ -e "$HOME/.pyenv/.pyenvrc" ]; then
  source $HOME/.pyenv/.pyenvrc
  if [ -e "$HOME/.pyenv/completions/pyenv.zsh" ]; then
    source $HOME/.pyenv/completions/pyenv.zsh
  elif [ -e "/usr/local/opt/pyenv/completions/pyenv.zsh" ]; then
    source /usr/local/opt/pyenv/completions/pyenv.zsh
  fi
fi
# END ANSIBLE MANAGED BLOCK: pyenv
#
bindkey -s '^o' 'background \n'
bindkey '^e' edit-command-line
# when sourcing zshrc make sure PATH variables aren't duplicated
eval "typeset -U path"
hello() { clear && lolcat $HOME/dotfiles/motd.txt }
bindkey -s '^k' 'hello \n'
hello \n

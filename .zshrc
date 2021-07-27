export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim
export TERM=xterm-256color
# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
#autoload -Uz compinit
#compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
# eval "$(dircolors -b)"
if whence dircolors >/dev/null; then
  eval "$(dircolors -b)"
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
  alias ls='ls --color'
else
  export CLICOLOR=1
  zstyle ':completion:*:default' list-colors ''
fi
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Add conda to path
export Path="/home/nic/miniconda3/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fuzzies
a() {
     conda activate "$(conda info --envs | fzf | awk '{print $1}')"
 }

# aliases
alias cdg="cd ~/git"
alias new_window="alacritty &"
alias deac="conda deactivate && conda deactivate"
alias ts="cdg && /usr/local/bin/ta ."
# themes
AFTERGLOW='afterglow.yaml'
CYBERPUNK='cyber_punk_neon.yaml'
NORD='nord.yaml'
TOKYONIGHT='tokyo-night.yaml'
TOKYONIGHTSTORM='tokyo-night-storm.yaml'

alias afterglow="alacritty-colorscheme -V apply $AFTERGLOW"
alias cyberpunk="alacritty-colorscheme -V apply $CYBERPUNK"
alias nord="alacritty-colorscheme -V apply $NORD"
alias tokyonight="alacritty-colorscheme -V apply $TOKYONIGHT"
alias tokyonightstorm="alacritty-colorscheme -V apply $TOKYONIGHTSTORM"
alias dbox="python3 /usr/local/bin/dropbox.py start"

# work stuff
alias new_reman="cookiecutter https://reman-analytics-cat-com.visualstudio.com/reman_analytics_pipeline_project_template/_git/reman_analytics_pipeline_project_template"
alias sproxy=". ~/scripts/set_proxy.sh"
alias uproxy=". ~/scripts/unset_proxy.sh"

# starship
eval "$(starship init zsh)"
# direnv
eval "$(direnv hook zsh)"
# jump right into tmux
#eval "$(tmux new -t base)"

. "$HOME/.cargo/env"
export STOW_FOLDERS="direnv,work,git,nvim,tmux,starship,ipython,pip,i3,shortcuts,polybar,picom,gitui,visidata"
export POLYBAR_BAR="work"
# work stuff
alias new_reman="cookiecutter https://reman-analytics-cat-com.visualstudio.com/reman_analytics_pipeline_project_template/_git/reman_analytics_pipeline_project_template"
alias aproxy="source ~/.local/bin/auto_proxy"
alias azcheckout='az repos pr checkout --id $(az repos pr list --output table | tail -n -2 | fzf | cut -d " " -f1)'

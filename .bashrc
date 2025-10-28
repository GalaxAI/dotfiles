#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


source ~/keys.sh

alias grep='grep --color=auto'
alias zed="zeditor"
# Python
alias pip='uv pip'
alias sv='source .venv/bin/activate'
alias ruff="uvx ruff"
alias mypy="uvx mypy"
# System
alias cat='bat'
alias vim="nvim"
alias ls='eza -lh --group-directories-first --icons=auto'
alias lt='eza --tree --level=2 --long --icons --git'
# Add local bin to PATH
export PATH=$HOME/.local/bin:$PATH

source /usr/share/bash-completion/bash_completion
eval "$(starship init bash)"

#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
RESET='\[\e[0m\]'
USERNAME_COLOR='\[\e[38;5;114m\]'  # green from color2 #98c379
AT_COLOR='\[\e[38;5;147m\]'       # white from color7 #dcdfe4
HOST_COLOR='\[\e[38;5;75m\]'      # blue from color4 #61afef
DIR_COLOR='\[\e[38;5;176m\]'      # magenta from color5 #c678dd


PS1="[${USERNAME_COLOR}\u${AT_COLOR}@${HOST_COLOR}\h ${DIR_COLOR}\W${RESET}\$] "

source ~/keys.sh

alias zed="zeditor"
# Python
alias pip='uv pip'
alias sv='source .venv/bin/activate'
# System
alias cat='bat'
alias vim="nvim"
alias ls='eza -lh --group-directories-first --icons=auto'
alias lt='eza --tree --level=2 --long --icons --git'
# Add local bin to PATH
export PATH=$HOME/.local/bin:$PATH

source /usr/share/bash-completion/bash_completion
eval "$(starship init bash)"

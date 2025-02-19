#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
RESET='\[\e[0m\]'
USERNAME_COLOR='\[\e[38;5;114m\]'  # green from color2 #98c379
AT_COLOR='\[\e[38;5;147m\]'       # white from color7 #dcdfe4
HOST_COLOR='\[\e[38;5;75m\]'      # blue from color4 #61afef
DIR_COLOR='\[\e[38;5;176m\]'      # magenta from color5 #c678dd


PS1="[${USERNAME_COLOR}\u${AT_COLOR}@${HOST_COLOR}\h ${DIR_COLOR}\W${RESET}\$] "


# Programming

## Python
alias pip='uv pip'
alias sv='source .venv/bin/activate'
## Go
if [ -f go.mod ]; then
    export PATH=$PATH:$(dirname $(go list -f '{{.Target}}' .))
fi

# Add local bin to PATH
export PATH=$HOME/.local/bin:$PATH

# Makefiles -- test
complete -W "\`grep -oE '^[^.][a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

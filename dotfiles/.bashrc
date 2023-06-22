# Alias
alias ls='ls --color=auto'

export PATH=$PATH:~/scripts/
export PATH=$PATH:~/.cabal/bin/
export PATH=$PATH:~/.cargo/bin/
export EDITOR="nvim"
export VISUAL="nvim"

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64



export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"


alias tt='tmux a'
alias phd='tmux-phd'

[ -f "/home/caguiler/.ghcup/env" ] && source "/home/caguiler/.ghcup/env" # ghcup-env

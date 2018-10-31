alias ls="ls -G" 
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH=$PATH:$HOME/bin

source /usr/local/etc/bash_completion.d/git-completion.bash

# this will be picked up by as user.email for git
export EMAIL=joey.cai@gmail.com

if [ -f ~/.bash_profile_local ]; then
    source ~/.bash_profile_local
fi

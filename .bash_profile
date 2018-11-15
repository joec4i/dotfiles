alias ls="ls -G" 
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export GOPATH=$HOME/go
export PATH=${GOPATH//://bin:}/bin:$HOME/bin:/usr/local/opt/mysql-client/bin:$PATH

source /usr/local/etc/bash_completion.d/git-completion.bash

source /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
source /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

# this will be picked up by as user.email for git
export EMAIL=joey.cai@gmail.com

if [ -f ~/.bash_profile_local ]; then
    source ~/.bash_profile_local
fi

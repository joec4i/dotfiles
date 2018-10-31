alias ls="ls -G" 
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH=$PATH:$HOME/bin

if [ -f ~/.bash_profile_local ]; then
    source ~/.bash_profile_local
fi

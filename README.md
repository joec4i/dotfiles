# My Dotfiles

Initial setup:

```bash
git clone --bare git@github.com:joec4i/dotfiles.git ~/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config config --local core.sparseCheckout true
config config --local user.email "joey.cai@gmail.com"
echo "/*" > ~/.cfg/info/sparse-checkout
echo '!'"README.md" >> ~/.cfg/info/sparse-checkout
config checkout
```

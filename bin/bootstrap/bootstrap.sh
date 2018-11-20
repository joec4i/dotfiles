#!/bin/bash

set -e 

CWD=`dirname $0`

source $CWD/install_homebrew.sh

echo "> brew update"
brew update

echo "> brew bundle"

brew bundle --file=$CWD/Brewfile

source $CWD/install_vim_plugins.sh

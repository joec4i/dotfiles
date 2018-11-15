#!/bin/sh

if test ! $(which brew); then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew has been installed!"
fi

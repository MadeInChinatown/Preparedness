#!/bin/sh
# https://number42.de/blog/2018/07/03/mint-2018-07-03-mint.html
brew update

function install_current {
  echo "trying to update $1"
  # https://docs.travis-ci.com/user/reference/osx/
  # avoids errors
  brew upgrade $1 || brew install $1 || true
  brew link $1
}

if [ -e "Mintfile" ]; then
  install_current mint
  mint bootstrap
fi
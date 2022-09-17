#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Restart terminal
zsh

# install python
brew install pyenv
pyenv install 3.10.6
pyenv global 3.10.6

git config --global user.name "veryheavypickle"
git config --global user.email xavier.carroll01@gmail.com

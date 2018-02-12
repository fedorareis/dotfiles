#!/usr/local/bin/fish

brew update
brew upgrade
brew cleanup
brew bundle dump --force --file=../brew/Brewfile.full

fisher up
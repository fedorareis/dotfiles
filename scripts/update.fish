#!/usr/local/bin/fish

brew upgrade; and brew upgrade --cask --greedy; and brew cleanup; and fisher update;
brew bundle dump --force --file=../brew/Brewfile.full;

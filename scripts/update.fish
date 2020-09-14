#!/usr/local/bin/fish

brew upgrade; and brew upgrade --cask --greedy; and brew cleanup; and fisher self-update; and fisher;
brew bundle dump --force --file=../brew/Brewfile.full;

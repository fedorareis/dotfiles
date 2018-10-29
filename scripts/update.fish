#!/usr/local/bin/fish

brew update; and brew upgrade; and brew cleanup; and fisher self-update; and fisher;
brew bundle dump --force --file=../brew/Brewfile.full;

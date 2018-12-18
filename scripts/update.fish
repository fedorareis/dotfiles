#!/usr/local/bin/fish

brew upgrade; and brew cleanup; and brew prune; and fisher self-update; and fisher;
brew bundle dump --force --file=../brew/Brewfile.full;

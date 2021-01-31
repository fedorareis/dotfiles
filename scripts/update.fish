#!/usr/local/bin/fish

brew upgrade; and brew upgrade --cask --greedy; and brew cleanup; and fisher update;
brew bundle dump --force --file=../brew/Brewfile.full;
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U;

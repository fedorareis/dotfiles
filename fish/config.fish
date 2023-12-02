set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting 'Welcome Kyle'

alias ls="lsd"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

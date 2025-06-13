set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting 'Welcome Kyle'

alias ls="lsd"

function flac2alac
  mkdir alac_files
  for flac_file in *.flac
    set basename (basename "$flac_file" .flac)
    ffmpeg -i "$flac_file" -c:v copy -c:a alac "alac_files/$basename.m4a"
  end
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# pnpm
set -gx PNPM_HOME "/Users/kylereis/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Created by `pipx` on 2025-04-14 08:50:30
set PATH $PATH /Users/kylereis/.local/bin

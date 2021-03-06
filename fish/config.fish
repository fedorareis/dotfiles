set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting 'Welcome Kyle'

set -x EIGEN3_INCLUDE_DIR /usr/local/include/eigen3
set -x GLFW_DIR /usr/local/include/GLFW
set -x GLEW_DIR /usr/local/opt/glew
set -x ESSENTIA_INCLUDE_DIR /usr/local/include/essentia

alias graphics "g++ -L/opt/local/lib -L/usr/local/lib -I/usr/local/include -lglfw3 -lglew -framework GLUT -framework OpenGL -v"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -x GPG_TTY (tty)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# OpenSSL environment variables.
set --export --global LDFLAGS  -L/usr/local/opt/openssl/lib
set --export --global CPPFLAGS -I/usr/local/opt/openssl/include
set --export --global PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig
set -g fish_user_paths "/usr/local/opt/dirmngr/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/opt/node@6/bin" $fish_user_paths

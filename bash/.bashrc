#!/bin/bash

source ~/.iterm2_shell_integration.bash

export PATH=/usr/local/bin:$PATH

export EIGEN3_INCLUDE_DIR=/usr/local/include/eigen3
export GLFW_DIR=/usr/local/include/GLFW
export GLEW_DIR=/usr/local/opt/glew

#These lines set the bash coloring
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h: \[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export TERM=xterm-color

# Next set of lines is for ResDev
export WORKON_HOME=$HOME/Documents/coding/ResDev/virtualenvs
export PROJECT_HOME=$HOME/Documents/coding/ResDev/projects
export DJANGO_SETTINGS_MODULE=settings.local
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT=/usr/local/var/pyenv

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

pyenv virtualenvwrapper


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/kylereis/.gvm/bin/gvm-init.sh" ]] && source "/Users/kylereis/.gvm/bin/gvm-init.sh"

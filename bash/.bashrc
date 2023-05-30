#
# ~/.bashrc
#

# Added github key to ssh-agent
/usr/bin/ssh-add ~/.ssh/github 2&> /dev/null

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#alias
alias pacsy="sudo pacman -Sy"
alias gs="git status"
alias grs="git restore --staged"
alias gap="git add -p"
alias gcm="git commit -m"
alias vim="nvim"

#export
export LIBVA_DRIVER_NAME=iHD
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

export PYENV_ROOT=~/.pyenv

export PATH="~/.cargo/bin/:$PATH"
export PATH="~/.local/bin/:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

set -o vi
export WINEDEBUG=-all
export WINEARCH=win32

HISTSIZE=20000
HISTFILESIZE=20000

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

bind -x '"\C-f":tmux-sessionizer'
source ~/.local/bin/.git-prompt.sh

alias ls='ls --color=auto'
PS1="[\[\e[33m\]\u@\h\[\e[m\]:\[\e[32m\] \W\[\e[m\]]\e[38;5;101m\]\$(__git_ps1 ' (%s)')\e[0m\] \$ "

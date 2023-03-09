#
# ~/.bashrc
#

# Added github key to ssh-agent
/usr/bin/ssh-add ~/.ssh/github 2&> /dev/null

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\[\e[33m\]\u@\h\[\e[m\]:\[\e[32m\] \W\[\e[m\]]\$ "

#alias
alias pacsy="sudo pacman -Sy"
alias gs="git status"
alias grs="git restore --staged"
alias gap="git add -p"
alias gcm="git commit -m"

#export
export LIBVA_DRIVER_NAME=iHD
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

export PYENV_ROOT=~/.pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

set -o vi
export WINEDEBUG=-all
export WINEARCH=win32

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

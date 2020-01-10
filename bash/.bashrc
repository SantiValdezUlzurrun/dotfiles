#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$HOME/.scripts:$PATH

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[32m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\]:\[\e[31m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32m\]\$\[\e[m\] ' 

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

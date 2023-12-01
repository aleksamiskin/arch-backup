#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# alias for switching network interfaces, not sure if I need to export here or when exactly does it happen
alias connection="$HOME/Scripts/switch_between_network_interfaces.sh"
export PATH="$PATH:$HOME/Scripts"

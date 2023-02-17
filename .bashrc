#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
neofetch

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/matt/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/matt/.config/synth-shell/synth-shell-prompt.sh
fi

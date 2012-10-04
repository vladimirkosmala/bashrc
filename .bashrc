[ -z "$PS1" ] && return

export PS1='\[\033[01;31m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
export PROMPT_COMMAND='echo -ne "\ek\e\\"'
export PATH=$PATH:~/bin/:.

umask 022
export LS_OPTIONS='--color=auto'
export GREP_OPTIONS="--color"
eval `dircolors`

# Man en couleur
export LESS_TERMCAP_mb=$'\E[01;31m'    # blink
export LESS_TERMCAP_md=$'\E[01;31m'    # bold
export LESS_TERMCAP_me=$'\E[0m'        # fin
export LESS_TERMCAP_so=$'\E[01;44;33m' # state
export LESS_TERMCAP_se=$'\E[0m'        # fin
export LESS_TERMCAP_us=$'\E[01;32m'    # underline
export LESS_TERMCAP_ue=$'\E[0m'        # fin

# Alias
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias ..='cd ..'

alias as='lynx http://127.0.0.1/server-status'	# status
alias ar='/etc/init.d/apache2 restart'			# restart
alias ap='cd /etc/apache2'						# path

alias ps='aptitude search'						# search

# Security
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

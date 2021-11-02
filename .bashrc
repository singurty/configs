# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

alias vi=nvim
alias ll="ls -lh --color=auto"

# git aliases
alias gl="git log --oneline -30"
alias gs="git status"
alias gp="git push"
alias gc="git commit -m"
alias ga="git add ."

# go aliases
alias gr="go run ."

alias dnf="sudo dnf"

# edit common files
alias va="nvim ~/.config/awesome/rc.lua"
alias vv="nvim ~/.config/nvim/init.vim"

alias t=tmux
alias tl="tmux ls"
alias ta="tmux attach-session"
alias tt="tmux attach-session -t"

alias upconf="~/scripts/updateconf.sh"

fortune -a

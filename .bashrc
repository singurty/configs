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
alias gc="git commit -S -m"
alias gcm="git commit -S"
alias ga="git add ."

# go aliases
alias gr="go run ."

# edit common files
alias va="nvim ~/.config/awesome/rc.lua"
alias vv="nvim ~/.config/nvim/init.vim"

alias t=tmux
alias tl="tmux ls"
alias ta="tmux attach-session"
alias tt="tmux attach-session -t"

alias upconf="~/scripts/updateconf.sh"

alias burp="bash ~/Application/command.sh"

#fortune -a

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hammer/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hammer/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hammer/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hammer/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


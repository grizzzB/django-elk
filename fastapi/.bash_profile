if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hyunjinB/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hyunjinB/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hyunjinB/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hyunjinB/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\h:\[\e[31;1m\]\w:> \[\e[0m\]"
export TERM=linux
export LC_MESSAGES=en_US
export LS_COLORS="di=00;36:fi=00;37"

alias vi='vim $*'
alias ll='ls -alF'

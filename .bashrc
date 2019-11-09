# OS判定
if [ "$(uname)" == 'Darwin' ]; then
    OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    OS='Linux'
fi

# alias
alias ls='ls -G'
alias ll='ls -la'

if [ $OS == 'Mac' ]; then
    alias o='open'
fi

# Git設定
if [ $OS == 'Mac' ]; then
    source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
    source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

# プロンプトに各種情報を表示
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
export PS1='\[\033[0;32m\]\u@\h\[\033[00m\]:\[\033[0;31m\]\w\[\033[0;35m\]$(__git_ps1)\[\e[1;36m\]\n>\[\033[00m\] '

# local設定があるならそちらを優先
if [ -e "${HOME}/.bashrc.local" ]; then
    source "${HOME}/.bashrc.local"
fi


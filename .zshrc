export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git zshmarks jump xcode docker jira jsontools sudo web-search osx)
source $ZSH/oh-my-zsh.sh

# User configuration
if [ -f ~/.zshenv ]; then
    . ~/.zshenv #this machine specific env
fi
# GOPATH, GOROOT defined .zshenv
export PATH=/opt/go_appengine:$PATH
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

alias vim='mvim -v'
alias vi='mvim -v'

#codejam / context
alias mm="ln -s $GCJ_CPP/Makefile Makefile"
alias a='./a.out'
alias run='./a.out <~/Downloads/*.in >~/Downloads/output.txt'
alias topcoder='javaws /Applications/TopCoder/ContestAppletProd.jnlp'

alias dockerenv='$(docker-machine env default)'

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

#/export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="crcandy"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git zshmarks jump jsontools sudo)
source $ZSH/oh-my-zsh.sh

# User configuration
if [ -f ~/.zshenv ]; then
    . ~/.zshenv #this machine specific env
fi

#Golang Additions
LC_CTYPE=en_IN.UTF-8
LC_ALL=en_IN.UTF-8


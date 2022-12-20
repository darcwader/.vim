export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="crcandy"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git jump jsontools sudo)
source $ZSH/oh-my-zsh.sh

HISTFILE=~/.zsh_history

export HISTSIZE=1000000
export SAVEHIST=1000000

setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

export LC_CTYPE=en_IN.UTF-8
export LC_ALL=en_IN.UTF-8

if [ -f ~/.zshenv ]; then
    . ~/.zshenv #this machine specific env
fi

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases 
fi



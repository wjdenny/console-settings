# add user bin to PATH
PATH=$PATH:$HOME/.settings/bin

# add git integration for tmux
if [[ $TMUX ]]; then source ~/.settings/tmux-git/tmux-git.sh; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export NODE_PATH of current node version
export NODE_PATH=$(npm root --global)

# editor
export FCEDIT=vim
export EDITOR=vim

# aliases
alias ls="ls -l --human-readable --almost-all --color=auto --no-group --time-style=long-iso --sort=time --reverse"
alias  l="ls -l --human-readable --almost-all --color=auto --no-group --time-style=long-iso --sort=time --reverse"

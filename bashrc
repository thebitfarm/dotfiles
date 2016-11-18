#!/bin/bash

#set -o vi
set -o emacs

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/Users/joe/.cargo/bin:$PATH"

source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

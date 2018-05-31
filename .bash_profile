export PATH=$(ruby -e "puts Gem.user_dir")/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"

complete -C aws_completer aws

GIT_COMPLETION_BASH_PATH=/usr/share/git/completion/git-completion.bash
if [ -f $GIT_COMPLETION_BASH_PATH ]; then
    source $GIT_COMPLETION_BASH_PATH
fi

export HISTCONTROL=ignorespace

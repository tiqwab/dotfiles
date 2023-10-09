export PATH="$HOME/.local/bin:$PATH"
if [ -x "$(command -v ruby)" ]; then
    export PATH=$(ruby -e "puts Gem.user_dir")/bin:$PATH
fi
if [ -x "$(command -v go)" ]; then
    export PATH="$PATH:$HOME/go/bin"
fi
if [ -d "$HOME/.cargo" ]; then
    # export PATH="$PATH:$HOME/.cargo/bin"

    # rustup appended the below setting, which currently does the same thing as above
    . "$HOME/.cargo/env"
fi
if [ -x "command -v poetry" ]; then
    export PATH="$PATH:$HOME/.poetry/bin"
fi

# only execute if aws exists
if [ -x "$(command -v aws)" ]; then
    complete -C aws_completer aws
fi

GIT_COMPLETION_BASH_PATH=/usr/share/git/completion/git-completion.bash
if [ -f $GIT_COMPLETION_BASH_PATH ]; then
    source $GIT_COMPLETION_BASH_PATH
fi

KUBECTL_COMPLETION_BASH_PATH=~/.kube/completion.bash.inc
if [ -f $KUBECTL_COMPLETION_BASH_PATH ]; then
    source $KUBECTL_COMPLETION_BASH_PATH
fi

POETRY_COMPLETION_BASH_PATH=~/.poetry/poetry.bash-completion
if [ -f $POETRY_COMPLETION_BASH_PATH ]; then
    source $POETRY_COMPLETION_BASH_PATH
fi

export HISTCONTROL=ignorespace

# for RISC-V
export RISCV=/opt/riscv
export PATH="$PATH:$RISCV/bin"

# for Pipenv
if [ -x "command -v pipenv" ]; then
    export PIPENV_VENV_IN_PROJECT=true
fi

# compile one file with common flags
# ref. https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
function cco() {
    cc -Wall -Wextra -std=c11 -o "${1%%.*}" $CFLAGS $1
}

function cpo() {
    c++ -Wall -Wextra -std=c++14 -o "${1%%.*}" $CFLAGS $1
}

# For AtCoder
function atc() {
usage=$(cat <<EOF
usage: atc <command>
command should be 'fetch' or 'test'.
EOF
)

    if [ "${1}" = "fetch" ]; then
        python3 ~/dotfiles/bin/atcoder_fetch.py
    elif [ "${1}" = "test" ]; then
        ~/dotfiles/bin/atcoder_test.sh
    else
        echo -e "$usage" > /dev/stderr
    fi
}

test -r ~/.bashrc && . ~/.bashrc

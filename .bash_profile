export PATH=$(ruby -e "puts Gem.user_dir")/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
complete -C aws_completer aws

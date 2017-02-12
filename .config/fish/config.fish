# if which brew &> /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
#   source "$(brew --prefix)/etc/bash_completion"
# fi
# if which brew &> /dev/null && [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
#   for file in "$(brew --prefix)/etc/bash_completion.d/"{git-completion.bash,git-prompt.sh}; do
#     if [ -f $file ]; then
#       source $file
#     fi
#   done
# fi

set -x PATH $HOME/.rbenv $PATH
rbenv init - | source

set -x GOPATH $HOME/.go
set -x PATH $PATH $GOPATH/bin

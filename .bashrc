alias ls="ls -G"
alias ll='ls -lG'

if which brew &> /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi
if which brew &> /dev/null && [ -d "$(brew --prefix)/etc/bash_completion.d" ]; then
  for file in "$(brew --prefix)/etc/bash_completion.d/"{git-completion.bash,git-prompt.sh}; do
    if [ -f $file ]; then
      source $file
    fi
  done
fi

# For Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

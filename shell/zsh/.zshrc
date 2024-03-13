autoload -Uz compinit
compinit

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(mise activate zsh)"

export PATH="$PATH":"$HOME/.cargo/bin"

alias ls='eza'
alias cat='bat'
alias find='fd'
alias grep='rg'

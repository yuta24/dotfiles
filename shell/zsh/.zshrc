autoload -Uz compinit
compinit

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH="$PATH":"$HOME/.cargo/bin"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

alias vi='nvim'
alias vim='nvim'
alias ls='eza'
alias cat='bat'
alias find='fd'
alias grep='rg'

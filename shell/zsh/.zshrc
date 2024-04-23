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

peco-src () {
    local repo=$(ghq list | peco --query "$LBUFFER")
    if [ -n "$repo" ]; then
        repo=$(ghq list --full-path --exact $repo)
        BUFFER="cd ${repo}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

alias vi='nvim'
alias vim='nvim'
alias ls='eza'
alias cat='bat'
alias find='fd'
alias grep='rg'

autoload -Uz compinit
compinit

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

function ghq_with_peco() {
  BUFFER=$(\history -n 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}

zle -N ghq_with_peco
bindkey '^r' ghq_with_peco

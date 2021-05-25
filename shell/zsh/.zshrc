autoload -Uz compinit
compinit

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

export PATH="$PATH":"$HOME/.pub-cache/bin"

function history_with_peco() {
  BUFFER=$(\history -n 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}

zle -N history_with_peco
bindkey '^r' history_with_peco

function ghq_with_peco() {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}

zle -N ghq_with_peco
bindkey '^g' ghq_with_peco

alias ls='exa'
alias cat='bat'
alias find='fd'
alias grep='rg'

#!/bin/bash

echo "Installing homebrew..."
which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "Run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "OK. Run brew upgrade..."

brew upgrade -f

formulas=(
    cask
    screenresolution
    tmux
    zsh
    zsh-completions
    z
    git
    git-lfs
    wget
    ghq
    peco
    jq
    cloc
    envchain
    nodejs
    haskell-stack
    rust
    awscli
    rbenv
    ruby-build
    carthage
    bitrise
    graphviz
)

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew reinstall $formula || brew upgrade $formula
done

casks=(
    skitch
    google-chrome
    google-japanese-ime
    slack
    iterm2
    visual-studio-code
    alfred
    dropbox
    docker
    1password
    intellij-idea-ce
    daisydisk
    java
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup

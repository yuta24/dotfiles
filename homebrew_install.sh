#!/bin/bash

echo "Installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "Run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "OK. Run brew upgrade..."

brew upgrade --all

formulas=(
    cask
    git
    git-lfs
    carthage
    wget
    bash-completion
    ghq
    peco
    jq
    cloc
    envchain
    screenresolution
    rbenv
    ruby-build
    haskell-stack
    go
    awscli
    bitrise
)

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    skitch
    sketch
    google-chrome
    google-japanese-ime
    slack
    iterm2
    visual-studio-code
    alfred
    dropbox
    docker
    1password
    skype
    intellij-idea-ce
    daisydisk
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

brew cleanup
brew cask cleanup

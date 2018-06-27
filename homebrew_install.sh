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
    git
    git-lfs
    carthage
    wget
    bash-completions
    ghq
    peco
    rbenv
    ruby-build
    jq
    cloc
)

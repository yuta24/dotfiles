#!/usr/bin/env bash

set -eu

function clone() {
    if [ -d ~/dotfiles ]; then
        rm -rf ~/dotfiles
    fi

    git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function setup_brew() {
    which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    which brew >/dev/null 2>&1 || brew update

    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zshrc
    eval "$(/opt/homebrew/bin/brew shellenv)"
}

function main() {
    # Prepare
    clone
    setup_brew

    # Install tools
    sh ~/dotfiles/bin/install.sh

    sh ~/dotfiles/bin/setup.sh

    rsync -avr --no-perms ~/dotfiles/config/ ~/
}

main

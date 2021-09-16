#!/usr/bin/env bash

set -eu

function clone() {
    if [ -d ~/dotfiles ]; then
        rm -rf ~/dotfiles
	fi

    git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function main() {
    clone

    sh ~/dotfiles/bin/setup.sh
    
    rsync -avr --no-perms ~/dotfiles/config/ ~/;

    which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    which brew >/dev/null 2>&1 || brew update

    sh ~/dotfiles/bin/install_tools.sh
}

main

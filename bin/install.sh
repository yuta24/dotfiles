#!/usr/bin/env bash

function install_brew() {
    which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    which brew >/dev/null 2>&1 || brew update
}

function main() {
    install_brew
}

main

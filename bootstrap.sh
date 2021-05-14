#!/usr/bin/env bash

set -eu

function clone() {
	git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function install_brew() {
	which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	which brew >/dev/null 2>&1 && brew doctor
	which brew >/dev/null 2>&1 && brew update
}

function main() {
	clone
	install_brew
}

main

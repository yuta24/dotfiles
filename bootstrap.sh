#!/usr/bin/env bash

set -eu

function clone() {
	if [ -d ~/dotfiles ]; then
		rm -rf ~/dotfiles
	fi

	git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function install_brew() {
	which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	which brew >/dev/null 2>&1 || brew update
}

function setup_shell() {
	sh ~/dotfiles/shell/setup.sh
}

function main() {
	clone
	setup_shell
	install_brew
}

main

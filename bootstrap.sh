#!/usr/bin/env bash

set -eu

function clone() {
    if [ -d ~/dotfiles ]; then
        rm -rf ~/dotfiles
	fi

    git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function setup_shell() {
    sh ~/dotfiles/shell/setup.sh
}

function sync_config() {
    rsync -avr --no-perms ~/dotfiles/config/ ~/;
}

function install_tools() {
    sh ~/dotfiles/install_tools.sh
}

function install_rust() {
	expect -c "
		spawn rustup-init
		expect \">\"
		send -- 1\n
		interact
	"
}

function main() {
    clone

    sh ~/dotfiles/bin/install.sh
	# setup_shell
	# sync_config
	# install_tools
	# install_rust
}

main

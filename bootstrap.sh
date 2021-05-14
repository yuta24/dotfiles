#!/usr/bin/env bash

set -eu

function clone() {
	git clone --depth=1 https://github.com/yuta24/dotfiles.git ~/dotfiles
}

function main() {
	clone
}

main

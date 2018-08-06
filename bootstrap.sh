#!/usr/bin/env bash

git pull origin master;

function install_homebrew() {
    command -v 'brew' > /dev/null 2>&1 && return
    echo 'Installing homebrew...'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'done'
}

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

doIt;

install_homebrew;

unset doIt;

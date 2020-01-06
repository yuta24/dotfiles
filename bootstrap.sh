#!/usr/bin/env bash

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "homebrew_install.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

doIt;

sh homebrew_install.sh

# Change shell to zsh
echo `which zsh` | sudo tee -a /etc/shells
chsh -s `which zsh`

sh setup_zsh.sh

unset doIt;

#!/usr/bin/env bash

which brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
which brew >/dev/null 2>&1 || brew update

sh ~/dotfiles/install_tools.sh

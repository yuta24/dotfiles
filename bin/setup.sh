#!/bin/zsh

cp -f ~/dotfiles/shell/zsh/.zshrc ~/.zshrc
source ~/.zshrc

defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"

killall Finder

defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "orientation" -string "left"

killall Dock

defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"

killall SystemUIServer

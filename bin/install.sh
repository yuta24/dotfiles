#!/usr/bin/env bash

set -eu

taps=(
    homebrew/cask-fonts
)

for tap in "${taps[@]}"; do
    brew tap $tap
done

formulas=(
    asdf
    cask
    cloc
    direnv
    envchain
    font-hack-nerd-font
    gawk
    gh
    ghq
    git
    git-lfs
    gpg
    helix
    jq
    mas
    neovim
    peco
    rust
    starship
    tmux
    zsh-completions
)

for formula in "${formulas[@]}"; do
    brew reinstall $formula || brew upgrade $formula
done

casks=(
    1password
    alacritty
    arc
    daisydisk
    deepl
    discord
    dropbox
    figma
    flipper
    google-chrome
    google-drive
    grammarly
    insomnia
    miro
    notion
    notion-calendar
    obsidian
    proxyman
    raycast
    reflector
    sf-symbols
    slack
    spotify
    tableplus
    visual-studio-code
    warp
    xcodes
    zed
    zoom
)

for cask in "${casks[@]}"; do
    brew install --cask $cask
done

apps=(
    918858936	# Airmail
    640199958	# Developer
    1380446739	# InjectionIII
    1504940162	# RocketSim for Xcode
    1450874784	# Transporter
)

for app in "${apps[@]}"; do
    mas install $app
done

brew cleanup

extensions=(
    vscodevim.vim
)

for extension in "${extensions[@]}"; do
    code --install-extension $extension
done

cargos=(
    bat
    broot
    eza
    fd-find
    git-delta
    just
    ripgrep
    skim
    tokei
    zellij
)

for cargo in "${cargos[@]}"; do
    cargo install $cargo
done

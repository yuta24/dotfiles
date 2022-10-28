#!/usr/bin/env bash

set -eu

taps=(
    homebrew/cask-fonts
    jakehilborn/jakehilborn
)

for tap in "${taps[@]}"; do
    brew tap $tap
done

formulas=(
    asdf
    cask
    cloc
    direnv
    displayplacer
    envchain
    font-hack-nerd-font
    gawk
    gh
    ghq
    git
    git-lfs
    gpg
    jq
    mas
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
    alfred
    alacritty
    authy
    daisydisk
    deepl
    discord
    docker
    dropbox
    figma
    flipper
    google-chrome
    google-drive-file-stream
    grammarly
    imagemagick
    insomnia
    loopback
    miro
    notion
    obsidian
    proxyman
    raycast
    reflector
    sequel-pro
    sf-symbols
    sim-genie
    skitch
    slack
    spotify
    visual-studio-code
    xcodes
    zoom
)

for cask in "${casks[@]}"; do
    brew install --cask $cask
done

apps=(
    640199958 # Developer
    1380446739 # InjectionIII
    1504940162 # RocketSim for Xcode
    1450874784 # Transporter
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
    exa
    fd-find
    git-delta
    just
    ripgrep
    skim
    tokei
)

for cargo in "${cargos[@]}"; do
    cargo install $cargo
done

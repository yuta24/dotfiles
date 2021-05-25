#!/usr/bin/env bash

taps=(
    dart-lang/dart
    homebrew/cask-fonts
    jakehilborn/jakehilborn
)

for tap in "${taps[@]}"; do
    brew tap $tap
done

formulas=(
    cask
    charles
    cloc
    dart
    direnv
    displayplacer
    envchain
    font-hack-nerd-font
    ghq
    git
    git-lfs
    grammarly
    jq
    mas
    peco
    postman
    rustup
    sequel-pro
    starship
    tmux
    xcodes
    zsh-completions
)

for formula in "${formulas[@]}"; do
    brew reinstall $formula || brew upgrade $formula
done

casks=(
    1password
    adobe-creative-cloud
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
    loopback
    miro
    notion
    obsidian
    sf-symbols
    sim-genie
    skitch
    slack
    spotify
    visual-studio-code
    zoom
)

for cask in "${casks[@]}"; do
    brew install --cask $cask
done

apps=(
    640199958 # Developer
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
    ripgrep
    skim
    tokei
)

for cargo in "${cargos[@]}"; do
    cargo install $cargo
done

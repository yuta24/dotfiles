#!/usr/bin/env bash

formulas=(
    cask
    cloc
    direnv
    envchain
    ghq
    git
    git-lfs
    jq
    mas
    rustup
    starship
    tmux
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

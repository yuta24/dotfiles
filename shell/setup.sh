#!/bin/zsh

SCRIPT_DIR=`dirname $0`

cp -f $SCRIPT_DIR/zsh/.zprofile ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

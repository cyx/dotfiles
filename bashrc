#!/bin/bash

## Environment
export EDITOR=vim
export PATH=/opt/bin:$PATH:~/.dotfiles/bin
export PS1='$ '
export CHROMIUM_FLAGS="--disable-hang-monitor"

## Go specific stuff
export PATH=~/.go/bin:$PATH
export GOPATH=~/.go
export CGO_ENABLED=0 # make everything scratch friendly

## Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

## Common aliases
alias startx="ssh-agent startx"
alias vi="vim"
alias ag="ag -a"
alias k9="killall -9"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

## Base16 Color scheme
source ~/.dotfiles/base16-shell/base16-solarized.dark.sh

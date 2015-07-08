#!/bin/bash

## Environment
export EDITOR=vim
export PATH=/opt/bin:$PATH:~/.dotfiles/bin
export PS1='$ '
export CHROMIUM_FLAGS="--disable-hang-monitor"
export PATH=~/.gem/ruby/2.2.0/bin:~/.go/libraries/bin:~/.go/projects/bin:$PATH:~/.rbenv/bin
export GOPATH=~/.go/libraries:~/.go/projects

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
source ~/.dotfiles/base16-shell/base16-default.dark.sh

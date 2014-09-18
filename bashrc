#!/bin/bash

## Environment
export EDITOR=vim
export PATH=/opt/bin:$PATH:~/.dotfiles/bin
export PS1='$ '

## Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

## Common aliases
alias startx="ssh-agent startx"
alias vi="vim"
alias ag="ag -a"
alias k9="killall -9"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

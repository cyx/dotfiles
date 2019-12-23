#!/bin/bash

## Environment
export EDITOR=vim
export PATH=/opt/bin:$PATH:~/.dotfiles/bin
export PS1='$ '
export CHROMIUM_FLAGS="--disable-hang-monitor"

## Go specific stuff
export PATH=/usr/local/go/bin:~/go/bin:$PATH
export GOPATH=~/go

## Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

## Common aliases
alias vi="vim"

## Base16 Color scheme
source ~/.dotfiles/base16-shell/base16-solarized.dark.sh

## node general setup
export PATH=./node_modules/.bin:$PATH

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

G() {
	cd $GOPATH/src/github.com/$1
}

test -f ~/.hooks_bashrc && source ~/.hooks_bashrc

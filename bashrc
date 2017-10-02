#!/bin/bash

## Environment
export EDITOR=vim
export PATH=/opt/bin:$PATH:~/.dotfiles/bin:~/.gem/ruby/2.4.0/bin:~/.gem/ruby/2.3.0/bin
export PS1='$ '
export CHROMIUM_FLAGS="--disable-hang-monitor"

## Go specific stuff
export PATH=/usr/local/go/bin:~/go/bin:$PATH
export GOPATH=~/go

## Heroku toolbelt
export PATH=/usr/local/heroku/bin:$PATH

## Common aliases
alias startx="ssh-agent startx"
alias vi="vim"
alias k9="killall -9"

## Base16 Color scheme
source ~/.dotfiles/base16-shell/base16-solarized.dark.sh

transfer() {
	if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
	tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile;
}


le() {
	sudo certbot -d $1 --manual --preferred-challenges dns certonly
}

G() {
	cd $GOPATH/src/github.com/$1
}

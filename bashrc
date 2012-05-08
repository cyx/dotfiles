#!/bin/bash

export EDITOR="vim"
export RUBY_BREW_PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin
export PS1='$(_gemset):: \[\033[01;32m\]\w \[\033[00;37m\]$(echo $(br) $(_suspended)) \$\[\033[00m\] '
export PATH=$RUBY_BREW_PATH:~/.dotfiles/bin:/usr/local/bin:$PATH
export GOPATH=~/gocode
export GREP_OPTIONS="--color=auto"
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"

## app specific secrets
if [ -e ~/.openredis_secret ]; then source ~/.openredis_secret; fi

## amazon s3 configuration
if [[ -f ~/.amazon_keys ]]; then source ~/.amazon_keys; fi

## authorize.net development settings
if [[ -f ~/.authorize-net ]]; then source ~/.authorize-net; fi

## malone development settings
if [[ -f ~/.malone ]]; then source ~/.malone; fi

## mailchimp settings
if [[ -f ~/.mailchimp ]]; then source ~/.mailchimp; fi

# common aliases & functions

_gemset() {
  if [[ -z $GS_NAME ]]; then
    echo ""
  else
    echo "$GS_NAME "
  fi
}

_suspended() {
  jobs | wc -l | tr -d " "
}

pg() {
  if [ $1 == "start" ]
  then
    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
  else
    pg_ctl -D /usr/local/var/postgres stop -s -m fast
  fi
}

## Kudos to djanowski for this. Use ack to search files and open it in
## `vi` with the searched text as the last searched phrase in vi.
vack() {
  vi -p -c "/$1" $(ack -al $@)
}

## Search all files by default. This fixes the problem that *.css, *.less,
## *.sass files aren't usually seacrched.
alias ack="ack -a"

## Go up one dir.
alias ..="cd .."

function take() {
    mkdir -p "$1"
    cd "$1"
}

alias k9="killall -9"

## Finder
alias o='open . &'

## Syntax check Javascript
function jsc() {
  jsl -process $1
}

# GIT

ghpage() {
  git symbolic-ref HEAD refs/heads/gh-pages
  rm .git/index
  git clean -fdx
}

gush() {
  REMOTE_EXISTS=$(git branch -r | grep $(br))

  if [ -n "$REMOTE_EXISTS" ]; then
    git push origin $(br)
  else
    git push -u origin $(br)
  fi
}

gup() {
  git pull origin $(br)
}

br() {
  test -d .git && git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3
}

alias gc='git commit -v'
alias gca='git commit -v -a'
alias gpp='git pull && git push'
alias gco='git checkout'
alias gd='git diff'
alias gdm='git diff master'
alias gst='tig status'
alias g='git status -sb'

function github() {
  git clone git@github.com:$1.git
}

# STEP 1: Run tunnel <hostname>
# STEP 2: Go to network, SOCKS proxy, and specify localhost 9999
# STEP 3: BAM, profit :-)
function tunnel() {
  ssh -ND 9999 $1
}

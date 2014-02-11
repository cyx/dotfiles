#/bin/bash

export EDITOR="vim"
export PS1='# '
export GREP_OPTIONS="--color=auto"
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export PATH=/opt/bin:$PATH:~/.dotfiles/bin

## Kudos to djanowski for this. Use ack to search files and open it in
## `vi` with the searched text as the last searched phrase in vi.
vag() {
  vi -p -c "/$1" $(ag -l $@)
}

## Search all files by default. This fixes the problem that *.css, *.less,
## *.sass files aren't usually seacrched.
alias ack="ack -a"
alias ag="ag -a"

function take() {
    mkdir -p "$1"
    cd "$1"
}

alias k9="killall -9"

# STEP 1: Run tunnel <hostname>
# STEP 2: Go to network, SOCKS proxy, and specify localhost 9999
# STEP 3: BAM, profit :-)
function tunnel() {
  ssh -ND 9999 $1
}

function reversproxy() {
  ssh $1 -R :9393:127.0.0.1:8080 sleep 99999
}

function encrypt-file() {
  cat "$1" | openssl des3 -salt -pass env:SECRET | openssl base64
}

function decrypt-file() {
  cat "$1" | openssl base64 -d | openssl des3 -salt -pass env:SECRET -d
}

function suspend() {
  dbus-send --system --print-reply \
    --dest="org.freedesktop.UPower" \
    /org/freedesktop/UPower \
    org.freedesktop.UPower.Suspend
}

source ~/.ssh-agent

# Linux pbcopy / pbpaste conveniences
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

#/bin/bash

export EDITOR="vim"
export PS1='\[\e[1;32m\][\h] \W \$\[\e[0m\] '
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
alias ag="ag -a"

## No need to specify vim (it's annoying)
alias vi="vim"

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

function tcrypt-open() {
  if [ $# -ne 2 ]
  then
    echo "Usage: tcrypt-open <file> <name>"
    return 1
  fi

  file=$1
  name=$2


  echo "sudo cryptsetup --type tcrypt open $file $name"
  sudo cryptsetup --type tcrypt open $file $name

  sudo mkdir /mnt/$name

  echo "sudo mount /dev/mapper/$name /mnt/$name"
  sudo mount /dev/mapper/$name /mnt/$name
}

function tcrypt-close() {
  if [ $# -ne 1 ]
  then
    echo "Usage: tcrypt-close <name>"
    return 1
  fi

  name=$1

  echo "sudo cryptsetup close $name"
  sudo cryptsetup close $name

  echo "sudo umount /mnt/$name"
  sudo "umount /mnt/$name"
}

# Linux pbcopy / pbpaste conveniences
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

source ~/.dotfiles/ssh-agent

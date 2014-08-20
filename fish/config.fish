set -gx EDITOR vim
set -gx GREP_OPTIONS --color=auto
set -gx PATH /opt/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/.dotfiles/bin

alias vi="vim"
alias ag="ag -a"
alias k9="killall -9"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

~/.dotfiles/ssh-agent
